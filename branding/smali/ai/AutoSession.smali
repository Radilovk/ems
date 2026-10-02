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

.field private static engine:Lcom/isaigu/gymapp/ai/AutoEngine;

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

    .line 60
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 62
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    .line 92
    new-array v0, v1, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    .line 93
    new-array v0, v1, [J

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    .line 95
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoSession$Ticker;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoSession$Ticker;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoSession$GoNow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoSession$GoNow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    .line 106
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V
    .registers 11

    .prologue
    .line 1619
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1620
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 1621
    if-nez p2, :cond_30

    .line 1622
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1623
    :goto_c
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v0

    .line 1624
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_30

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_30

    .line 1625
    const-wide v2, 0x3fb999999999999aL    # 0.1

    int-to-double v4, p1

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v6, v6

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 1628
    :cond_30
    return-void

    .line 1622
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_c
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tick()V

    return-void
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()Z
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
    .line 1849
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1850
    const-string v0, "auto"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 1855
    :cond_d
    :goto_d
    return-void

    .line 1852
    :catch_e
    move-exception v0

    .line 1853
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

    .line 564
    move v1, v2

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 565
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 566
    if-ltz p0, :cond_16

    if-ne v1, p0, :cond_1a

    :cond_16
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 564
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 569
    :cond_1e
    const/16 v3, 0x64

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 570
    iput v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_1a

    .line 572
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_39

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    :goto_34
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 573
    return-void

    .line 572
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

    .line 1195
    if-nez p0, :cond_6

    .line 1214
    :cond_5
    :goto_5
    return-void

    .line 1198
    :cond_6
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1199
    sput-boolean v6, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    .line 1200
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

    .line 1201
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    goto :goto_10

    .line 1203
    :cond_21
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1205
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

    .line 1206
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    :goto_3f
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v6

    .line 1207
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v1, :cond_6e

    cmpl-double v1, v6, v4

    if-lez v1, :cond_6e

    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-ltz v1, :cond_6e

    .line 1208
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

    .line 1210
    goto :goto_2b

    .line 1206
    :cond_5f
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    goto :goto_3f

    .line 1211
    :cond_64
    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    .line 1212
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
    .line 115
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    .line 116
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 117
    return-void
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1795
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

    .line 1797
    :cond_11
    :goto_11
    return-object v0

    .line 1796
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static beginCalibration()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 500
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_8

    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 503
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 504
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v3

    .line 505
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 506
    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 507
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 508
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 509
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    .line 510
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->strengthOf(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v1

    .line 511
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v5, :cond_44

    const/16 v5, 0xa

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_41
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_16

    :cond_44
    move v1, v2

    goto :goto_41

    .line 513
    :cond_46
    const/16 v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setWorkLengthAll(I)V

    .line 514
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 516
    :try_start_4f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_58

    .line 517
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_58} :catch_5c

    .line 522
    :cond_58
    :goto_58
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    .line 523
    return-void

    .line 519
    :catch_5c
    move-exception v0

    .line 520
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

    goto :goto_58
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 333
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->loadOptions(Landroid/content/Context;)V

    .line 334
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->loadTips(Landroid/content/Context;)V

    .line 335
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 339
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/AutoSession$Row;-><init>()V

    .line 340
    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 341
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    iput-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 342
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v8

    .line 343
    if-eqz v8, :cond_11d

    .line 344
    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    iput-wide v10, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    .line 345
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v2, :cond_47

    .line 346
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 348
    :cond_47
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_55

    .line 349
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 351
    :cond_55
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v2, :cond_63

    .line 352
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 354
    :cond_63
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 355
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v2, :cond_73

    .line 356
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 358
    :cond_73
    sget-object v9, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v10, v9

    move v2, v3

    :goto_77
    if-ge v2, v10, :cond_91

    aget-object v11, v9, v2

    .line 359
    iget-object v12, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 361
    :cond_91
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 362
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 363
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v9, "diastasis"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 364
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 366
    :cond_b8
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 367
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v9

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 368
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->kindOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v9

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 369
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v9, :cond_103

    .line 370
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "drain"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 382
    :cond_e0
    :goto_e0
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->nameOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    .line 383
    iget-wide v8, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v0

    .line 384
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    iput v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 385
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->lastActiveMs:J

    invoke-static {v8, v9, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->hoursSince(JJ)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 386
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 371
    :cond_103
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v9, :cond_110

    .line 372
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "cellulite"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_e0

    .line 373
    :cond_110
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v8, :cond_e0

    .line 374
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "recovery"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_e0

    .line 378
    :cond_11d
    sget-object v8, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    :goto_121
    if-ge v2, v9, :cond_e0

    aget-object v10, v8, v2

    .line 379
    iget-object v11, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    .line 389
    :cond_135
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_160

    move-object v0, v1

    .line 390
    :goto_13e
    if-eqz v0, :cond_147

    .line 391
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 393
    :cond_147
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 394
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 395
    sput v3, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    .line 396
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 397
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    .line 398
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->acquireBand(Landroid/app/Activity;)V

    .line 399
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    .line 400
    return-void

    .line 389
    :cond_160
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    goto :goto_13e
.end method

.method public static buildPlan()V
    .registers 8

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x0

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 463
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    .line 465
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

    .line 466
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->copyOptions(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 467
    if-eqz v4, :cond_6a

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v4, v3, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;

    move-result-object v3

    :goto_35
    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    .line 468
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_53

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v3, :cond_53

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_53

    .line 469
    const-string v3, "\u041d\u044f\u043c\u0430 \u0440\u044a\u0441\u0442 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v6, "No height in the client record"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    .line 472
    :cond_53
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_c4

    if-eqz v4, :cond_c4

    .line 473
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

    .line 475
    goto :goto_16

    .line 467
    :cond_6a
    const/4 v3, 0x0

    goto :goto_35

    .line 476
    :cond_6c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->restHrEstimate()I

    move-result v0

    .line 477
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 478
    if-eq v1, v2, :cond_90

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    if-le v2, v1, :cond_90

    .line 479
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 480
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 482
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

    .line 483
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 484
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

    .line 486
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

    .line 527
    const/4 v1, 0x0

    .line 528
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

    .line 529
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "WARMUP"

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 532
    if-eqz v1, :cond_30

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    iget v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-le v3, v4, :cond_8d

    :cond_30
    :goto_30
    move-object v1, v0

    .line 535
    goto :goto_c

    .line 536
    :cond_32
    if-nez v1, :cond_3f

    .line 537
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v1, v0

    .line 539
    :cond_3f
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 540
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

    .line 541
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4d

    .line 546
    :goto_61
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 547
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 548
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 549
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 550
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 551
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 552
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 553
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 554
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 555
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 556
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 557
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 558
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 559
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

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v1

    if-nez v1, :cond_8

    .line 764
    :cond_7
    :goto_7
    return v0

    .line 762
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 763
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 764
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
    .line 576
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

    .line 577
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_6

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    if-lez v0, :cond_6

    .line 578
    const/4 v0, 0x1

    .line 581
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

    .line 710
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_10

    .line 711
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    .line 713
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopTicker()V

    .line 714
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 715
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 716
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 717
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    .line 718
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 719
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 720
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 721
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 722
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 723
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 724
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->releaseBand()V

    .line 725
    return-void
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 307
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0441\u043f\u0440\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430 \u043e\u0442 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    const-string v1, "Stop the Workouts map first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_e
    return-object v0

    .line 309
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_20

    .line 310
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u043f\u0440\u0435\u0434\u0438 \u0410\u0432\u0442\u043e."

    const-string v1, "Close the AI session before Auto."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 313
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 314
    :cond_2c
    const-string v0, "\u0421\u043f\u0440\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f: \u0432 \u0410\u0432\u0442\u043e \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0434\u044a\u0440\u0436\u0438 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435."

    const-string v1, "Stop music sync: in Auto the program holds frequency and pauses."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_e

    .line 317
    :catch_35
    move-exception v0

    .line 320
    :cond_36
    :try_start_36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 321
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0430\u0442\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u043d\u0430 \u0442\u0430\u0439\u043c\u0435\u0440\u0430 \u043f\u0440\u0435\u0434\u0438 \u0410\u0432\u0442\u043e."

    const-string v1, "Disarm the timer block program before Auto."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_e

    .line 324
    :catch_45
    move-exception v0

    .line 326
    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_55

    .line 327
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 329
    :cond_55
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 405
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 406
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 407
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 409
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 410
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    .line 413
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 415
    return-void
.end method

.method private static copyOptions(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 420
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 421
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 423
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 424
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 425
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 426
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 427
    return-void
.end method

.method static end()V
    .registers 4

    .prologue
    .line 695
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_d

    .line 696
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    .line 698
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 699
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 701
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 702
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_27

    .line 703
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->finishToReport()V

    .line 707
    :cond_26
    :goto_26
    return-void

    .line 704
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_26

    .line 705
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    goto :goto_26
.end method

.method private static engineEvents(J)V
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1669
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_b

    .line 1705
    :cond_a
    :goto_a
    return-void

    .line 1672
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCorridorExt()I

    move-result v0

    .line 1673
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    if-le v0, v1, :cond_189

    .line 1674
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

    .line 1675
    invoke-virtual {v3, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1676
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

    .line 1674
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1680
    :cond_8e
    :goto_8e
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    .line 1681
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseExt()I

    move-result v0

    .line 1682
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    if-le v0, v1, :cond_d3

    .line 1683
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

    .line 1686
    :cond_d3
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    .line 1687
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRaiseLocked()Z

    move-result v0

    .line 1688
    if-eqz v0, :cond_ec

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    if-nez v1, :cond_ec

    .line 1689
    const-string v1, "\u0414\u043e\u0437\u0430\u0442\u0430 \u0435 20 % \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u043a\u0430\u0447\u0432\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0432 \u0442\u0430\u0437\u0438 \u0441\u0435\u0441\u0438\u044f"

    const-string v2, "Dose 20 % above plan \u2014 no more raising this session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1692
    :cond_ec
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    .line 1693
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoseStopped()Z

    move-result v0

    if-eqz v0, :cond_107

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    if-nez v0, :cond_107

    .line 1694
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    .line 1695
    const-string v0, "\u0411\u044e\u0434\u0436\u0435\u0442\u044a\u0442 \u043d\u0430 \u0434\u043e\u0437\u0430\u0442\u0430 \u0435 \u0438\u0437\u0447\u0435\u0440\u043f\u0430\u043d \u2014 \u043a\u044a\u043c \u043e\u0445\u043b\u0430\u0436\u0434\u0430\u043d\u0435"

    const-string v1, "Dose budget used up \u2014 to the cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1698
    :cond_107
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 1699
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

    .line 1701
    sput-wide p0, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    .line 1702
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

    .line 1677
    :cond_189
    if-nez v0, :cond_8e

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    if-lez v1, :cond_8e

    .line 1678
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
    .line 1819
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1820
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_11

    .line 1828
    :cond_10
    :goto_10
    return-void

    .line 1824
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 1825
    :catch_17
    move-exception v0

    .line 1826
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

    .line 1273
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_c

    .line 1308
    :cond_b
    :goto_b
    return-void

    .line 1276
    :cond_c
    const/4 v1, 0x0

    .line 1277
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

    .line 1278
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_13

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v3, :cond_13

    move-object v6, v0

    .line 1283
    :goto_28
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v8

    .line 1285
    if-eqz v6, :cond_90

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_90

    if-eqz v8, :cond_90

    .line 1286
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

    .line 1287
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_cf

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1288
    :goto_56
    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v8, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v0

    .line 1289
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

    .line 1290
    :goto_6f
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v3

    .line 1291
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

    .line 1292
    :goto_8b
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    .line 1293
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    move v7, v2

    .line 1297
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

    .line 1298
    :cond_a6
    sput-wide p0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastMs:J

    .line 1300
    :try_start_a8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecastFrom(J)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    .line 1301
    if-eqz v0, :cond_b

    .line 1302
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_b2} :catch_b4

    goto/16 :goto_b

    .line 1304
    :catch_b4
    move-exception v0

    .line 1305
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

    .line 1287
    :cond_cf
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_56

    .line 1289
    :cond_d2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_6f

    :cond_d5
    move v2, v7

    .line 1291
    goto :goto_8b

    :cond_d7
    move-object v6, v1

    goto/16 :goto_28
.end method

.method private static finishToReport()V
    .registers 9

    .prologue
    .line 1054
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 1055
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    .line 1056
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 1057
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 1058
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 1060
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoSession$Finished;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoSession$Finished;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1061
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    if-nez v0, :cond_64

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_64

    .line 1062
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    .line 1063
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_62

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1064
    :goto_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1065
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

    .line 1066
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_3a

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_3a

    .line 1067
    iget-wide v1, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoHistory;->record(Landroid/content/Context;JZDJ)V

    goto :goto_3a

    .line 1063
    :cond_62
    const/4 v0, 0x0

    goto :goto_30

    .line 1071
    :cond_64
    return-void
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 1

    .prologue
    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    return-object v0
.end method

.method static getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 1

    .prologue
    .line 646
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;
    .registers 1

    .prologue
    .line 178
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    return-object v0
.end method

.method public static getLastBandHr()I
    .registers 4

    .prologue
    .line 194
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
    .line 198
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastNoticeKind()I
    .registers 1

    .prologue
    .line 271
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    return v0
.end method

.method public static getLastNoticeMs()J
    .registers 2

    .prologue
    .line 275
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    return-wide v0
.end method

.method static getPanelRoot()Landroid/view/View;
    .registers 1

    .prologue
    .line 1902
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 182
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
    .line 190
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    return-object v0
.end method

.method static getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 1

    .prologue
    .line 587
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    .registers 1

    .prologue
    .line 174
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    return-object v0
.end method

.method static getWritten()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 1

    .prologue
    .line 973
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method private static goTime(J)J
    .registers 12

    .prologue
    const/4 v8, 0x1

    .line 896
    const-wide/16 v0, 0xbb8

    add-long v2, p0, v0

    .line 897
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 898
    if-eqz v0, :cond_3d

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3d

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    sub-long v4, p0, v4

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gez v1, :cond_3d

    .line 899
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 900
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    .line 901
    :goto_2e
    cmp-long v6, v0, v2

    if-gez v6, :cond_34

    .line 902
    add-long/2addr v0, v4

    goto :goto_2e

    .line 904
    :cond_34
    sub-long v4, v0, v2

    const-wide/16 v6, 0xfa0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3d

    .line 908
    :goto_3c
    return-wide v0

    :cond_3d
    move-wide v0, v2

    goto :goto_3c
.end method

.method private static guard(J)V
    .registers 24

    .prologue
    .line 1387
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v2, :cond_5

    .line 1606
    :cond_4
    :goto_4
    return-void

    .line 1390
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_5b

    const/4 v2, 0x1

    move v9, v2

    .line 1391
    :goto_d
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    move-object v10, v2

    .line 1392
    :goto_18
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_61

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_61

    const/4 v2, 0x1

    .line 1393
    :goto_27
    if-nez v9, :cond_63

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v3, :cond_63

    .line 1394
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v3

    .line 1395
    if-eqz v3, :cond_63

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_63

    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_63

    if-eqz v2, :cond_63

    .line 1396
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1397
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1398
    const-string v2, "\u0421\u043f\u0440\u044f\u043d\u043e \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 \u0410\u0432\u0442\u043e \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v3, "Stopped from the main screen \u2014 Auto paused."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;JZ)V

    .line 1400
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto :goto_4

    .line 1390
    :cond_5b
    const/4 v2, 0x0

    move v9, v2

    goto :goto_d

    .line 1391
    :cond_5e
    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_18

    .line 1392
    :cond_61
    const/4 v2, 0x0

    goto :goto_27

    .line 1404
    :cond_63
    if-nez v9, :cond_8a

    if-nez v2, :cond_8a

    .line 1406
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

    .line 1407
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1408
    if-eqz v2, :cond_6d

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eqz v2, :cond_6d

    .line 1409
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto/16 :goto_4

    .line 1416
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

    .line 1417
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v11

    .line 1418
    if-eqz v11, :cond_90

    .line 1421
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

    .line 1422
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

    .line 1423
    :goto_cf
    iget-boolean v5, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v6, :cond_114

    iget v6, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-lez v6, :cond_114

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1424
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

    .line 1426
    :goto_f3
    if-nez v3, :cond_f7

    if-eqz v2, :cond_90

    .line 1429
    :cond_f7
    if-nez v9, :cond_fd

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v4, :cond_118

    .line 1430
    :cond_fd
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1431
    const-string v2, "\u041f\u0440\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v3, "During calibration frequency and pauses belong to the program."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1422
    :cond_112
    const/4 v3, 0x0

    goto :goto_cf

    .line 1424
    :cond_114
    const/4 v2, 0x0

    goto :goto_e4

    :cond_116
    const/4 v2, 0x0

    goto :goto_f3

    .line 1435
    :cond_118
    if-eqz v2, :cond_162

    if-nez v3, :cond_162

    .line 1436
    iget-boolean v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1437
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseAvailable()Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 1438
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v3, v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1439
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v2

    .line 1440
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1441
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1442
    const-string v2, "double_main"

    const-string v3, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u043b\u0435\u043a \u043d\u0438\u0441\u043a\u043e\u0447\u0435\u0441\u0442\u043e\u0442\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430. \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0440\u0435\u0448\u0430\u0432\u0430 \u0432 \u043a\u043e\u0438 \u0444\u0430\u0437\u0438."

    const-string v4, "Double impulse: a light low-frequency pulse in the pause. The program decides in which phases."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1445
    :cond_14c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1446
    const-string v2, "\u0422\u0430\u0437\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 / \u0444\u0430\u0437\u0430 \u043d\u044f\u043c\u0430 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v3, "No double impulse in this program / phase."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1451
    :cond_162
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-eq v2, v3, :cond_241

    iget v4, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1452
    :goto_16c
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/4 v3, 0x1

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v2, v3, :cond_244

    iget v5, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1453
    :goto_17b
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    const/4 v3, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v2, v3, :cond_247

    .line 1454
    const/4 v2, 0x1

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->getOffExtension()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1455
    :goto_196
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-eq v2, v3, :cond_24a

    iget v7, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1456
    :goto_1a0
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v8

    .line 1457
    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1458
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1459
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

    .line 1461
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

    .line 1462
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

    .line 1463
    if-eqz v2, :cond_253

    .line 1464
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

    .line 1451
    :cond_241
    const/4 v4, -0x1

    goto/16 :goto_16c

    .line 1452
    :cond_244
    const/4 v5, -0x1

    goto/16 :goto_17b

    .line 1454
    :cond_247
    const/4 v6, -0x1

    goto/16 :goto_196

    .line 1455
    :cond_24a
    const/4 v7, -0x1

    goto/16 :goto_1a0

    .line 1459
    :cond_24d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1ca

    .line 1461
    :cond_251
    const/4 v2, 0x0

    goto :goto_1e5

    .line 1466
    :cond_253
    if-eqz v3, :cond_28a

    .line 1467
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

    .line 1468
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1467
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1470
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

    .line 1471
    invoke-static {v10, v8}, Lcom/isaigu/gymapp/ai/AutoSession;->windowText(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1470
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1476
    :cond_2c0
    const/4 v13, 0x0

    .line 1477
    const/4 v5, 0x0

    .line 1478
    const/4 v11, 0x0

    .line 1479
    const/4 v10, 0x0

    .line 1480
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v3, v10

    move-object v4, v11

    move v6, v13

    :cond_2cd
    :goto_2cd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_719

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1481
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v14

    .line 1482
    if-eqz v14, :cond_2cd

    .line 1485
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_31e

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1486
    :goto_2e8
    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v7, :cond_741

    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v7, :cond_741

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    if-eqz v7, :cond_741

    .line 1487
    const/16 v7, 0xa

    new-array v12, v7, [I

    .line 1488
    const/4 v11, 0x0

    .line 1489
    const/4 v7, 0x0

    move v10, v7

    :goto_2fd
    const/16 v7, 0xa

    if-ge v10, v7, :cond_323

    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v7, v7

    if-ge v10, v7, :cond_323

    .line 1490
    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v7, v7, v10

    aput v7, v12, v10

    .line 1491
    aget v7, v12, v10

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    aget v13, v13, v10

    if-eq v7, v13, :cond_321

    const/4 v7, 0x1

    :goto_319
    or-int/2addr v11, v7

    .line 1489
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto :goto_2fd

    .line 1485
    :cond_31e
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_2e8

    .line 1491
    :cond_321
    const/4 v7, 0x0

    goto :goto_319

    .line 1493
    :cond_323
    if-eqz v11, :cond_741

    .line 1494
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v6, :cond_357

    .line 1495
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

    move-result-object v3

    .line 1496
    const/4 v2, 0x1

    move-object v5, v3

    .line 1528
    :goto_342
    const/4 v3, 0x1

    move v10, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v3

    .line 1531
    :goto_347
    iget v0, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move/from16 v16, v0

    .line 1532
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_42e

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move v6, v13

    .line 1533
    goto/16 :goto_2cd

    .line 1499
    :cond_357
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v11

    .line 1500
    const/16 v6, 0xa

    new-array v7, v6, [I

    .line 1501
    const/4 v6, 0x0

    :goto_362
    const/16 v10, 0xa

    if-ge v6, v10, :cond_37d

    .line 1502
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

    .line 1501
    add-int/lit8 v6, v6, 0x1

    goto :goto_362

    .line 1504
    :cond_37d
    invoke-static {v7, v11, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I

    move-result-object v13

    .line 1505
    const/4 v6, 0x0

    :goto_382
    const/16 v7, 0xa

    if-ge v6, v7, :cond_393

    .line 1506
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v10, v13, v6

    aget v16, v11, v6

    sub-int v10, v10, v16

    aput v10, v7, v6

    .line 1505
    add-int/lit8 v6, v6, 0x1

    goto :goto_382

    .line 1508
    :cond_393
    const/4 v6, -0x1

    .line 1509
    const/4 v10, -0x1

    .line 1510
    const/4 v7, 0x0

    :goto_396
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v7, v0, :cond_3bd

    .line 1511
    aget v16, v13, v7

    aget v17, v12, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3a9

    if-gez v6, :cond_3a9

    move v6, v7

    .line 1514
    :cond_3a9
    aget v16, v12, v7

    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3ba

    if-gez v10, :cond_3ba

    move v10, v7

    .line 1510
    :cond_3ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_396

    .line 1518
    :cond_3bd
    if-ltz v6, :cond_3e0

    .line 1519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v12, v6

    aget v7, v13, v6

    invoke-static {v6, v5, v7, v2, v11}, Lcom/isaigu/gymapp/ai/AutoSession;->zoneReason(IIILcom/isaigu/gymapp/ai/AutoModel$Plan;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1520
    const/4 v2, 0x1

    move-object v5, v3

    goto/16 :goto_342

    .line 1521
    :cond_3e0
    if-ltz v10, :cond_73e

    if-nez v3, :cond_73e

    .line 1522
    const-string v4, "zone"

    .line 1523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoSession;->who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->zoneNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v13, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " % \u2014 \u043f\u0430\u0437\u0438 \u0441\u0435 \u0434\u043e \u043a\u0440\u0430\u044f. \u041d\u0430\u0434\u043e\u043b\u0443 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e, \u043d\u0430\u0433\u043e\u0440\u0435 \u0434\u043e +"

    const-string v7, " % \u2014 kept to the end. Down freely, up to +"

    .line 1524
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v6, " over the program."

    .line 1525
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v3

    goto/16 :goto_342

    .line 1535
    :cond_42e
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v2, :cond_450

    .line 1536
    const/4 v13, 0x1

    .line 1537
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

    move-result-object v5

    .line 1538
    const/4 v10, 0x1

    move v3, v10

    move-object v4, v11

    move v6, v13

    .line 1539
    goto/16 :goto_2cd

    .line 1541
    :cond_450
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_4a1

    .line 1542
    move/from16 v0, v16

    invoke-static {v8, v0, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V

    .line 1543
    if-nez v10, :cond_738

    .line 1544
    const-string v11, "strength_down"

    .line 1545
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

    .line 1546
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, v10

    move-object v4, v11

    move v6, v13

    goto/16 :goto_2cd

    .line 1551
    :cond_4a1
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1552
    if-nez v9, :cond_735

    .line 1553
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_576

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v6, v2

    .line 1554
    :goto_4ba
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 1555
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v4, :cond_57b

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_57b

    .line 1557
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

    .line 1563
    :goto_4dd
    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 1564
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    const/16 v5, 0x64

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1565
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

    .line 1566
    invoke-static {v8, v14, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V

    .line 1567
    move/from16 v0, v16

    if-ge v14, v0, :cond_6c7

    .line 1568
    const/4 v13, 0x1

    .line 1569
    const/4 v12, 0x1

    .line 1570
    if-lt v14, v3, :cond_5a2

    const/16 v2, 0x64

    if-ge v14, v2, :cond_5a2

    .line 1571
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

    if-eqz v9, :cond_59c

    const-string v2, "\u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    :goto_53b
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

    .line 1572
    if-eqz v9, :cond_59f

    const-string v2, "second"

    :goto_55c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1571
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v10, v12

    :goto_571
    move v3, v10

    move-object v4, v11

    move v6, v13

    .line 1595
    goto/16 :goto_2cd

    .line 1553
    :cond_576
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v6, v2

    goto/16 :goto_4ba

    .line 1559
    :cond_57b
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v2

    .line 1560
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

    goto/16 :goto_4dd

    .line 1571
    :cond_59c
    const-string v2, "\u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441"

    goto :goto_53b

    .line 1572
    :cond_59f
    const-string v2, "pulse"

    goto :goto_55c

    .line 1573
    :cond_5a2
    if-nez v9, :cond_6a7

    .line 1574
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_69b

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v10, v2

    .line 1575
    :goto_5ab
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v16

    .line 1576
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

    .line 1577
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

    .line 1578
    if-eqz v16, :cond_6a0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    :goto_605
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

    .line 1580
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

    .line 1581
    if-eqz v16, :cond_6a4

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    :goto_658
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1576
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1582
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRaiseLocked()Z

    move-result v3

    if-eqz v3, :cond_697

    .line 1583
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

    :cond_697
    move v10, v12

    move-object v5, v2

    .line 1585
    goto/16 :goto_571

    .line 1574
    :cond_69b
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v10, v2

    goto/16 :goto_5ab

    .line 1578
    :cond_6a0
    const-string v2, ""

    goto/16 :goto_605

    .line 1581
    :cond_6a4
    const-string v2, ""

    goto :goto_658

    .line 1586
    :cond_6a7
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

    move-result-object v5

    move v10, v12

    goto/16 :goto_571

    .line 1588
    :cond_6c7
    if-nez v10, :cond_732

    .line 1589
    if-eqz v9, :cond_70d

    const-string v2, "calib_up"

    .line 1590
    :goto_6cd
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

    .line 1591
    if-eqz v9, :cond_710

    const-string v3, ". \u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v5, ". Raise to the target feeling, at most +5 per second."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1593
    :goto_702
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v2

    goto/16 :goto_571

    .line 1589
    :cond_70d
    const-string v2, "strength_up"

    goto :goto_6cd

    .line 1593
    :cond_710
    const-string v3, ". \u041d\u0430\u0433\u043e\u0440\u0435 \u2014 \u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430, +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v5, ". Up \u2014 to the phase ceiling, +5 per pulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_702

    .line 1596
    :cond_719
    if-eqz v6, :cond_720

    .line 1597
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1599
    :cond_720
    if-eqz v5, :cond_4

    .line 1600
    if-nez v3, :cond_72b

    .line 1601
    move-wide/from16 v0, p0

    invoke-static {v4, v5, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1603
    :cond_72b
    move-wide/from16 v0, p0

    invoke-static {v5, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    :cond_732
    move-object v5, v12

    goto/16 :goto_571

    :cond_735
    move v2, v14

    goto/16 :goto_4dd

    :cond_738
    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move v6, v13

    goto/16 :goto_2cd

    :cond_73e
    move v2, v3

    goto/16 :goto_342

    :cond_741
    move v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    goto/16 :goto_347
.end method

.method public static isActive()Z
    .registers 2

    .prologue
    .line 168
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

    .line 296
    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_b

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 298
    :cond_a
    :goto_a
    return v0

    .line 297
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static isNewTip(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 219
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
    .line 1775
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_b

    move-object v0, v1

    .line 1790
    :goto_a
    return-object v0

    .line 1780
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 1781
    if-eqz v0, :cond_36

    .line 1782
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

    .line 1783
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1784
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_17

    .line 1788
    :catch_35
    move-exception v0

    :cond_36
    move-object v0, v1

    .line 1790
    goto :goto_a
.end method

.method static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 1770
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    .line 1771
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

.method private static leaderRunning()Z
    .registers 2

    .prologue
    .line 1049
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1050
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
    .line 1610
    if-nez p1, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v0, :cond_11

    .line 1611
    :cond_e
    const-string v0, ""

    .line 1615
    :goto_10
    return-object v0

    .line 1613
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v4, v0

    .line 1614
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

    .line 1615
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

    .line 1613
    :cond_59
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v4, v0

    goto :goto_18
.end method

.method private static loadOptions(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 1868
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 1869
    if-nez p0, :cond_a

    .line 1882
    :goto_9
    return-void

    .line 1873
    :cond_a
    :try_start_a
    const-string v0, "auto_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1874
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "goal"

    const-string v3, "TONE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 1875
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "kind"

    const-string v3, "ACTIVE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1876
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "program"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1877
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "operator"

    const-string v3, "TRAINER"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1878
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "intensity"

    const-string v3, "STANDARD"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 1879
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "double"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_67} :catch_68

    goto :goto_9

    .line 1880
    :catch_68
    move-exception v0

    goto :goto_9
.end method

.method private static loadTips(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 238
    if-nez p0, :cond_4

    .line 252
    :cond_3
    :goto_3
    return-void

    .line 242
    :cond_4
    :try_start_4
    const-string v1, "auto_tips"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    const-string v2, "on"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 244
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 245
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

    .line 246
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 247
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_37} :catch_3a

    .line 245
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 250
    :catch_3a
    move-exception v0

    goto :goto_3
.end method

.method public static mainKeyState()I
    .registers 2

    .prologue
    .line 785
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 786
    const/4 v0, -0x1

    .line 789
    :goto_7
    return v0

    .line 788
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 789
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
    .line 753
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

    .line 754
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    .line 753
    :goto_1f
    return v0

    .line 754
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static mainStartPause()V
    .registers 4

    .prologue
    .line 793
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_b

    .line 810
    :cond_a
    :goto_a
    return-void

    .line 796
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 797
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 798
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_31

    .line 799
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 800
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 801
    const-string v2, "\u041f\u0430\u0443\u0437\u0430. \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430, \u25a0 \u2014 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    const-string v3, "Paused. \u25b6 resumes, \u25a0 \u2014 to the recovery."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 809
    :goto_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto :goto_a

    .line 803
    :cond_31
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4a

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 804
    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u25b6 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u043f\u0430\u0434\u043d\u0435."

    const-string v3, "HR is high \u2014 \u25b6 unlocks when it drops."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_2d

    .line 807
    :cond_4a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    goto :goto_2d
.end method

.method public static mainStop()V
    .registers 5

    .prologue
    .line 817
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_b

    .line 841
    :cond_a
    :goto_a
    return-void

    .line 820
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 821
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 822
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1d

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_ab

    .line 823
    :cond_1d
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_34

    .line 824
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->cancelCountdown(J)V

    .line 825
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 826
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 827
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 829
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_43

    .line 830
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 832
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 833
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

    .line 834
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

    .line 835
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

    .line 833
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 840
    :goto_a0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto/16 :goto_a

    .line 834
    :cond_a5
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    goto :goto_67

    .line 835
    :cond_a8
    const-string v0, "to the recovery."

    goto :goto_90

    .line 838
    :cond_ab
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    goto :goto_a0
.end method

.method public static markTip(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 223
    if-eqz p0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 224
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveTips(Landroid/content/Context;)V

    .line 226
    :cond_17
    return-void

    .line 224
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static nameOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1808
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 1809
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 1810
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 1814
    :goto_12
    return-object v0

    .line 1812
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

    .line 1813
    :catch_1d
    move-exception v0

    .line 1814
    const-string v0, ""

    goto :goto_12
.end method

.method public static next()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 651
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v1, v2, :cond_c

    .line 663
    :cond_b
    :goto_b
    return v0

    .line 654
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 655
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 656
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->next(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 659
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v4, :cond_2b

    .line 660
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 662
    :cond_2b
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V

    .line 663
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static nextFromPanel()V
    .registers 4

    .prologue
    .line 770
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 781
    :goto_6
    return-void

    .line 773
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getNextExercise()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 775
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5f

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u23ed \u041a\u044a\u043c \u201e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u23ed To "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    :goto_53
    const/4 v1, 0x0

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 775
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 780
    :cond_5b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto :goto_6

    .line 777
    :cond_5f
    const-string v0, "\u23ed \u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0444\u0430\u0437\u0430"

    const-string v1, "\u23ed The next phase"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53
.end method

.method static notice(Ljava/lang/String;IJ)V
    .registers 8

    .prologue
    .line 1639
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1665
    :cond_8
    :goto_8
    return-void

    .line 1642
    :cond_9
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    if-ge p1, v0, :cond_17

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 1645
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1646
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 1647
    sput p1, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    .line 1648
    sput-wide p2, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    .line 1649
    if-nez v0, :cond_47

    .line 1650
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

    .line 1652
    :cond_47
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 1655
    const/4 v0, 0x2

    if-ge p1, v0, :cond_62

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastGuardToastMs:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 1658
    :cond_62
    sput-wide p2, Lcom/isaigu/gymapp/ai/AutoSession;->lastGuardToastMs:J

    .line 1660
    :try_start_64
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1661
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

    .line 1663
    :catch_77
    move-exception v0

    goto :goto_8
.end method

.method private static notice(Ljava/lang/String;JZ)V
    .registers 5

    .prologue
    .line 1631
    if-eqz p3, :cond_7

    const/4 v0, 0x2

    :goto_3
    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1632
    return-void

    .line 1631
    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static onCountdown(J)V
    .registers 8

    .prologue
    .line 913
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v0

    .line 914
    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 922
    :goto_c
    return-void

    .line 917
    :cond_d
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 918
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoBeep;->countdown(J)V

    .line 919
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 920
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    sub-long/2addr v0, p0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 921
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->refresh()V

    goto :goto_c
.end method

.method private static onGo(J)V
    .registers 4

    .prologue
    .line 926
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->go()V

    .line 927
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 928
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 929
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_19

    .line 931
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 933
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 934
    return-void
.end method

.method public static onHeartRate(I)V
    .registers 5

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    sput p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    .line 145
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHrMs:J

    .line 146
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_28

    .line 147
    :cond_14
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 148
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aput p0, v3, v2

    .line 149
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    aput-wide v0, v3, v2

    .line 150
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    .line 152
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_37

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_37

    .line 153
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    .line 158
    :cond_37
    :goto_37
    return-void

    .line 155
    :catch_38
    move-exception v0

    .line 156
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
    .line 121
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

    .line 139
    :cond_12
    :goto_12
    return-void

    .line 124
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    .line 126
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 127
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v3

    .line 128
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_51

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v4, v5, :cond_51

    .line 129
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->onGo(J)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_12

    .line 136
    :catch_37
    move-exception v0

    .line 137
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

    .line 130
    :cond_51
    if-eqz v3, :cond_5b

    :try_start_53
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v3, v4, :cond_5b

    .line 131
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    goto :goto_12

    .line 132
    :cond_5b
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_12

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v3, v4, :cond_12

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 134
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_6f} :catch_37

    goto :goto_12
.end method

.method private static onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 949
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 950
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_66

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p0, v0, :cond_66

    .line 951
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p0, v0, :cond_19

    .line 952
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->end()V

    .line 953
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->flashSetEnd()V

    .line 955
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 956
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

    .line 965
    :cond_66
    :goto_66
    return-void

    .line 961
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

    .line 962
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s, then \u25b6 Start."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_66
.end method

.method public static ownsOutput()Z
    .registers 2

    .prologue
    .line 162
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_24

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 163
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 164
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 162
    :goto_25
    return v0

    .line 164
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static paramsText()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 977
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 978
    if-nez v0, :cond_a

    .line 979
    const-string v0, ""

    .line 991
    :goto_9
    return-object v0

    .line 981
    :cond_a
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_19

    .line 982
    const-string v0, "\u0431\u0435\u0437 \u0442\u043e\u043a"

    const-string v1, "no current"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 984
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b5s\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v2, :cond_94

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_94

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_94

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 988
    const-string v2, "\n2-\u0440\u0438 "

    const-string v3, "\n2nd "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v4, v6

    .line 989
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9
.end method

.method public static raiseAll()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/4 v2, 0x0

    .line 1008
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 1009
    :goto_10
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 1010
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1011
    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    aput v3, v5, v1

    .line 1012
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 1009
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1014
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

    .line 1015
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    move v1, v2

    move v3, v2

    .line 1017
    :goto_4c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 1018
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1019
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    aget v6, v5, v1

    if-le v2, v6, :cond_68

    move v0, v4

    .line 1017
    :goto_63
    add-int/lit8 v2, v1, 0x1

    move v1, v2

    move v3, v0

    goto :goto_4c

    .line 1021
    :cond_68
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_7e

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_7e

    .line 1022
    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    :cond_7e
    move v0, v3

    goto :goto_63

    .line 1025
    :cond_80
    if-eqz v3, :cond_94

    .line 1026
    const-string v0, "btn_raise"

    const-string v1, "+5 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438, \u043d\u043e \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430 \u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v2, "+5 % for all, never above the phase ceiling and at most +5 per pulse."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1026
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1033
    :cond_93
    :goto_93
    return-void

    .line 1029
    :cond_94
    const-string v0, "\u0422\u0430\u0432\u0430\u043d\u044a\u0442 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u0442\u0430\u0437\u0438 \u0444\u0430\u0437\u0430 \u0435 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430\u0442"

    const-string v1, "Strength ceiling of this phase reached"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1029
    invoke-static {v0, v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_93
.end method

.method public static reduceAll()V
    .registers 8

    .prologue
    .line 996
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

    .line 997
    const-wide v2, 0x3fc999999999999aL    # 0.2

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    goto :goto_6

    .line 999
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

    .line 1000
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1002
    :cond_3e
    const-string v0, "btn_reduce"

    const-string v1, "\u221210 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u0440\u0435\u0434\u043e\u0432\u0435. \u041d\u0435 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0441\u0430\u043c\u043e \u2014 \u0432\u044a\u0440\u043d\u0438 \u0441 \u201e+5 %\u201c \u0438\u043b\u0438 \u0441 + \u043d\u0430 \u0440\u0435\u0434\u0430."

    const-string v2, "\u221210 % for all rows. Not given back automatically \u2014 use +5 % or the row\'s +."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1002
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1004
    return-void
.end method

.method private static releaseBand()V
    .registers 4

    .prologue
    .line 1859
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

    .line 1863
    :goto_f
    return-void

    .line 1859
    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 1860
    :catch_12
    move-exception v0

    .line 1861
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
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    const/4 v0, 0x0

    :goto_a
    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 283
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

    .line 284
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 287
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_49

    .line 288
    const/4 v0, -0x1

    .line 291
    :goto_48
    return v0

    .line 290
    :cond_49
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 291
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

    .line 1218
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1229
    :goto_5
    return v0

    .line 1221
    :cond_6
    if-eqz p2, :cond_15

    .line 1222
    const/16 v1, 0x64

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 1224
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v1, v0

    .line 1225
    :goto_1c
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v10

    .line 1226
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_43

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v6

    .line 1227
    :goto_31
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    iget v8, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    move-wide v2, v10

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/AutoLimits;->rowStrength(IDDDI)I

    move-result v0

    .line 1228
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_5

    .line 1224
    :cond_3f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v1, v0

    goto :goto_1c

    :cond_43
    move-wide v6, v10

    .line 1226
    goto :goto_31
.end method

.method private static rowZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1253
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1254
    :goto_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v5

    .line 1256
    const/16 v1, 0xa

    new-array v6, v1, [I

    move v1, v2

    move v3, v2

    .line 1257
    :goto_11
    array-length v4, v6

    if-ge v1, v4, :cond_2d

    .line 1258
    aget v4, v5, v1

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v7, v7, v1

    add-int/2addr v4, v7

    aput v4, v6, v1

    .line 1259
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v4, v4, v1

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    :goto_24
    or-int/2addr v3, v4

    .line 1257
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1253
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_7

    :cond_2b
    move v4, v2

    .line 1259
    goto :goto_24

    .line 1261
    :cond_2d
    if-eqz p1, :cond_37

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-eqz v1, :cond_37

    if-nez v3, :cond_37

    move-object v0, v5

    .line 1264
    :goto_36
    return-object v0

    :cond_37
    invoke-static {v6, v5, v0}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I

    move-result-object v0

    goto :goto_36
.end method

.method static saveHeight(Landroid/app/Activity;I)V
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 438
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iput p1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 439
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 441
    :try_start_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v2, :cond_1a

    .line 458
    :cond_19
    :goto_19
    return-void

    .line 445
    :cond_1a
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 446
    iput p1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 447
    const-string v2, "com.isaigu.gymapp.widget.XemsLocalStore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_2b
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 449
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

    .line 450
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 451
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

    .line 455
    :catch_59
    move-exception v0

    .line 456
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

    .line 448
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method private static saveOptions(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1885
    if-nez p0, :cond_3

    .line 1899
    :goto_2
    return-void

    .line 1889
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

    .line 1890
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kind"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 1891
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "program"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 1892
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "operator"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1893
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intensity"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 1894
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 1895
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1896
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5d} :catch_5e

    goto :goto_2

    .line 1897
    :catch_5e
    move-exception v0

    goto :goto_2
.end method

.method private static saveTips(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 255
    if-nez p0, :cond_3

    .line 267
    :goto_2
    return-void

    .line 259
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
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

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2c

    const-string v1, ","

    :goto_22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 265
    :catch_2a
    move-exception v0

    goto :goto_2

    .line 261
    :cond_2c
    const-string v1, ""

    goto :goto_22

    .line 263
    :cond_2f
    const-string v0, "auto_tips"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 264
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
    .line 490
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    .line 491
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 492
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 493
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 494
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 495
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 496
    return-object v0
.end method

.method public static setDoublePulse(Z)V
    .registers 5

    .prologue
    .line 1036
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_27

    .line 1037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1038
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1039
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_27

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_27

    .line 1040
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 1041
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1042
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1045
    :cond_27
    return-void
.end method

.method public static setTips(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 210
    sput-boolean p1, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 211
    if-eqz p1, :cond_9

    .line 212
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 214
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveTips(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method private static setWorkLengthAll(I)V
    .registers 3

    .prologue
    .line 1831
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

    .line 1832
    iput p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_8

    .line 1834
    :cond_17
    return-void
.end method

.method public static startNext()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 860
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_d

    .line 873
    :cond_c
    :goto_c
    return v0

    .line 863
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 864
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v4, v5, :cond_29

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v4

    if-nez v4, :cond_29

    .line 865
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->waitReason(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_c

    .line 868
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 869
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->goTime(J)J

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 872
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    move v0, v1

    .line 873
    goto :goto_c
.end method

.method public static startReady()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 845
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v1, :cond_6

    .line 852
    :cond_5
    :goto_5
    return v0

    .line 848
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 849
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_26

    .line 850
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

    .line 852
    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    goto :goto_5
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 591
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-nez v0, :cond_12

    .line 642
    :cond_11
    :goto_11
    return-void

    .line 594
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveOptions(Landroid/content/Context;)V

    .line 595
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 596
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v1, :cond_35

    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    :goto_2d
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 597
    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 598
    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_1b

    :cond_35
    move v1, v2

    .line 596
    goto :goto_2d

    .line 600
    :cond_37
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 602
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 603
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 605
    :try_start_49
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_151

    move v0, v3

    :goto_50
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 606
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->script(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 607
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v0, :cond_89

    .line 608
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
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_89} :catch_154

    .line 613
    :cond_89
    :goto_89
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 615
    :try_start_90
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_16f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_16f

    move v0, v3

    :goto_9f
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    .line 616
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    .line 617
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;Z)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    .line 618
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoseBudget(D)V

    .line 619
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setZoneBudget([D)V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_c3} :catch_172

    .line 624
    :goto_c3
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    .line 625
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    .line 626
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    .line 627
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    .line 628
    sput-wide v10, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    .line 629
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 630
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    .line 631
    sput-wide v10, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 633
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    add-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setWorkLengthAll(I)V

    .line 634
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 635
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 636
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 637
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->goTime(J)J

    move-result-wide v2

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 638
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    .line 639
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

    .line 640
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

    .line 639
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    goto/16 :goto_11

    :cond_151
    move v0, v2

    .line 605
    goto/16 :goto_50

    .line 610
    :catch_154
    move-exception v0

    .line 611
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

    goto/16 :goto_89

    :cond_16f
    move v0, v2

    .line 615
    goto/16 :goto_9f

    .line 620
    :catch_172
    move-exception v0

    .line 621
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    .line 622
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

    goto/16 :goto_c3
.end method

.method private static startTicker()V
    .registers 4

    .prologue
    .line 1076
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    .line 1078
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1079
    return-void
.end method

.method private static stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1234
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v3, v0

    .line 1235
    :goto_8
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    if-nez v0, :cond_1b

    .line 1236
    :cond_e
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1245
    :cond_16
    return-object v0

    .line 1234
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v3, v0

    goto :goto_8

    .line 1238
    :cond_1b
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    .line 1239
    :goto_24
    array-length v4, v0

    if-ge v1, v4, :cond_16

    .line 1240
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_35

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v4, v4, v1

    if-nez v4, :cond_35

    .line 1241
    aput v2, v0, v1

    .line 1243
    :cond_35
    aget v4, v0, v1

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v0, v1

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method public static stop()V
    .registers 5

    .prologue
    .line 671
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_a

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    .line 691
    :cond_9
    :goto_9
    return-void

    .line 675
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_9

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 679
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 680
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 681
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 682
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    goto :goto_9

    .line 685
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 686
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

    .line 690
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto :goto_9
.end method

.method private static stopDevice()V
    .registers 4

    .prologue
    .line 1837
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 1839
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 1840
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 1845
    :cond_c
    :goto_c
    return-void

    .line 1842
    :catch_d
    move-exception v0

    .line 1843
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
    .line 1082
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method private static strengthOf(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 1802
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1803
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
    .line 431
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 432
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 434
    :cond_18
    return-void
.end method

.method private static tick()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1127
    const-wide/16 v0, 0x0

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1128
    sput-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    .line 1129
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_42

    .line 1130
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

    .line 1131
    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    mul-double v8, v10, v4

    add-double/2addr v6, v8

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    goto :goto_26

    .line 1133
    :cond_3e
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->guard(J)V

    .line 1190
    :cond_41
    :goto_41
    return-void

    .line 1136
    :cond_42
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_41

    .line 1140
    :try_start_4c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_73

    .line 1141
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1142
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1143
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u043e\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0410\u0432\u0442\u043e \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v1, "Music sync took the strength \u2014 Auto paused."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;JZ)V

    .line 1145
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_73} :catch_1a7

    .line 1149
    :cond_73
    :goto_73
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->guard(J)V

    .line 1150
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->feedLive(J)V

    .line 1151
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1152
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1153
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 1154
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->engineEvents(J)V

    .line 1155
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_14e

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_14e

    .line 1156
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onGo(J)V

    .line 1160
    :cond_98
    :goto_98
    if-eq v0, v1, :cond_9d

    .line 1161
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V

    .line 1163
    :cond_9d
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_157

    .line 1164
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v4

    .line 1165
    if-eqz v4, :cond_b0

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v4, v5, :cond_b0

    .line 1166
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 1171
    :cond_b0
    :goto_b0
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v4, :cond_b8

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_e2

    :cond_b8
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v4, v5, :cond_e2

    .line 1172
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1173
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 1174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->finishToReport()V

    .line 1175
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 1176
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

    .line 1178
    :cond_e2
    if-eq v0, v1, :cond_41

    .line 1179
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

    .line 1180
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_160

    .line 1181
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

    .line 1157
    :cond_14e
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_98

    .line 1158
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    goto/16 :goto_98

    .line 1168
    :cond_157
    sget-boolean v4, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    if-nez v4, :cond_b0

    .line 1169
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto/16 :goto_b0

    .line 1183
    :cond_160
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v0, :cond_41

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    if-eqz v0, :cond_1a4

    .line 1185
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getReentry()D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 1184
    :goto_184
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

    .line 1187
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto/16 :goto_41

    .line 1185
    :cond_1a4
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_184

    .line 1147
    :catch_1a7
    move-exception v0

    goto/16 :goto_73
.end method

.method static tip(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 230
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->isNewTip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    :goto_6
    return-void

    .line 233
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->markTip(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_6
.end method

.method public static tipsOn()Z
    .registers 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    return v0
.end method

.method public static togglePause()V
    .registers 4

    .prologue
    .line 729
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v0, :cond_5

    .line 745
    :cond_4
    :goto_4
    return-void

    .line 732
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 733
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 734
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_27

    .line 735
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->cancelCountdown(J)V

    .line 736
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 737
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    goto :goto_4

    .line 739
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_33

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 740
    :cond_33
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    goto :goto_4

    .line 741
    :cond_37
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4

    .line 742
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 743
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto :goto_4
.end method

.method static waitReason(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 878
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    .line 879
    if-lez v0, :cond_59

    .line 880
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

    .line 883
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s to refill their energy (phosphocreatine) \u2014 otherwise the next set starts tired."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    :goto_58
    return-object v0

    .line 886
    :cond_59
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 887
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

    .line 889
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

    .line 887
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 891
    :cond_c4
    const-string v0, ""

    goto :goto_58
.end method

.method private static who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1709
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 1710
    const-string v0, ""

    .line 1712
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

    .line 1742
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_c

    .line 1743
    :cond_9
    const-string v0, ""

    .line 1764
    :goto_b
    return-object v0

    .line 1745
    :cond_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1746
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 1747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1748
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_4b

    .line 1749
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    int-to-double v4, v0

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hzShare:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1750
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

    .line 1752
    :cond_4b
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_8c

    .line 1753
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

    .line 1754
    invoke-static {v5, p0}, Lcom/isaigu/gymapp/ai/AutoLimits;->onMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :cond_8c
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_c9

    .line 1757
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

    .line 1758
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    :cond_c9
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_100

    .line 1761
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

    .line 1762
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

    .line 1764
    :cond_100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 1753
    :cond_106
    const-string v0, ""

    goto/16 :goto_57

    .line 1757
    :cond_10a
    const-string v0, ""

    goto :goto_98

    .line 1761
    :cond_10d
    const-string v0, ""

    goto :goto_d5
.end method

.method private static writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1314
    if-nez p0, :cond_5

    .line 1360
    :cond_4
    :goto_4
    return-void

    .line 1317
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 1318
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1319
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

    .line 1320
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 1321
    if-eqz v5, :cond_14

    .line 1324
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->rowStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)I

    move-result v6

    .line 1325
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AutoSession;->rowZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1326
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1327
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1328
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1329
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1330
    iput v6, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1331
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v1, :cond_92

    if-lez v6, :cond_92

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_92

    move v1, v2

    .line 1332
    :goto_59
    iput-boolean v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1333
    if-eqz v1, :cond_70

    .line 1334
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 1335
    int-to-double v8, v6

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1337
    :cond_70
    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_94

    iget-object v1, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_94

    move v1, v3

    .line 1338
    :goto_7b
    array-length v8, v7

    iget-object v9, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v1, v8, :cond_94

    .line 1339
    iget-object v8, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v9, v7, v1

    aput v9, v8, v1

    .line 1338
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_92
    move v1, v3

    .line 1331
    goto :goto_59

    .line 1342
    :cond_94
    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1343
    iput-object v7, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    .line 1344
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_ae

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_ae

    .line 1345
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1348
    :cond_ae
    :try_start_ae
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_b5

    goto/16 :goto_14

    .line 1349
    :catch_b5
    move-exception v0

    .line 1350
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

    .line 1354
    :cond_d0
    :try_start_d0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_de

    .line 1357
    :goto_d3
    if-nez p1, :cond_4

    .line 1358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->feedLive(J)V

    goto/16 :goto_4

    .line 1355
    :catch_de
    move-exception v0

    goto :goto_d3
.end method

.method private static zeroOutput()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 1363
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    .line 1364
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object v1, v0

    .line 1365
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

    .line 1366
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 1367
    if-eqz v3, :cond_11

    .line 1370
    iput v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1371
    iput-boolean v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1372
    iput v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1374
    :try_start_2b
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_11

    .line 1375
    :catch_31
    move-exception v0

    .line 1376
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

    .line 1364
    :cond_4b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    .line 1379
    :cond_51
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1380
    return-void
.end method

.method private static zoneReason(IIILcom/isaigu/gymapp/ai/AutoModel$Plan;[I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1717
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->zoneNames()[Ljava/lang/String;

    move-result-object v0

    .line 1718
    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_30

    .line 1719
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

    .line 1737
    :goto_2f
    return-object v0

    .line 1721
    :cond_30
    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v1, v1, p0

    if-le p1, v1, :cond_60

    .line 1722
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

    .line 1724
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

    .line 1725
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

    .line 1726
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

    .line 1728
    :cond_bd
    const/4 v1, 0x1

    if-ne p0, v1, :cond_e1

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u043e\u0440\u0435\u043c \u2264 1.3 \u00d7 \u043a\u0440\u044a\u0441\u0442 \u2014 \u043f\u0430\u0437\u0438 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430 ("

    const-string v2, "Abs \u2264 1.3 \u00d7 low back \u2014 protects the spine ("

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 1731
    :cond_e1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_105

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u2264 \u0437\u0430\u0434\u043d\u043e / 0.6 \u2014 \u043f\u0430\u0437\u0438 \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e ("

    const-string v2, "Quads \u2264 hamstrings / 0.6 \u2014 protects the knee ("

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 1734
    :cond_105
    if-nez p0, :cond_128

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0413\u044a\u0440\u0434\u0438 \u2264 1.2 \u00d7 \u0433\u0440\u044a\u0431 \u2014 \u0441\u0442\u043e\u0439\u043a\u0430 ("

    const-string v2, "Chest \u2264 1.2 \u00d7 back \u2014 posture ("

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 1737
    :cond_128
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
