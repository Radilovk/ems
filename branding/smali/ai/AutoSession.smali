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

.field public static final FACE_PW_MAX:I = 0x96

.field public static final FACE_PW_MIN:I = 0x32

.field public static final FACE_PW_STEP:I = 0x32

.field static final FORECAST_MS:J = 0x1388L

.field private static final GUARD_TOAST_GAP_MS:J = 0xdacL

.field public static final INFO:I = 0x0

.field public static final LIMIT:I = 0x1

.field public static final OWNER_BAND:Ljava/lang/String; = "auto"

.field private static final PREFS:Ljava/lang/String; = "auto_session"

.field public static final SAFETY:I = 0x2

.field private static final TICK_MS:J = 0xfaL

.field private static final TIPS_PREFS:Ljava/lang/String; = "auto_tips"

.field public static aiMode:Z

.field private static beepsForGoMs:J

.field private static calPw:I

.field private static calibRunS:D

.field private static energy:Lcom/isaigu/gymapp/ai/AiEnergy;

.field private static engine:Lcom/isaigu/gymapp/ai/AutoEngine;

.field private static epocClosed:Z

.field private static facePwUs:I

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

.field public static vetoHz:I

.field public static vetoOff:I

.field public static vetoOn:I

.field public static vetoReason:Ljava/lang/String;

.field private static written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

.field private static zeroed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x28

    .line 73
    const/16 v0, 0x15e

    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 79
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    .line 111
    new-array v0, v1, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    .line 112
    new-array v0, v1, [J

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    .line 114
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoSession$Ticker;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoSession$Ticker;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoSession$GoNow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoSession$GoNow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    .line 125
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V
    .registers 11

    .prologue
    .line 2140
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 2141
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 2142
    if-nez p2, :cond_30

    .line 2143
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 2144
    :goto_c
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v0

    .line 2145
    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v2, :cond_30

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_30

    .line 2146
    const-wide v2, 0x3fb999999999999aL    # 0.1

    int-to-double v4, p1

    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v6, v6

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 2149
    :cond_30
    return-void

    .line 2143
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_c
.end method

.method static synthetic access$000(II)[I
    .registers 3

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->full(II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 30
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->tick()V

    return-void
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object v0
.end method

.method static synthetic access$500()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    return-object v0
.end method

.method static synthetic access$600()Landroid/view/View;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z

    move-result v0

    return v0
.end method

.method private static acquireBand(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 2361
    if-eqz p0, :cond_d

    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2362
    const-string v0, "auto"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->acquire(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    .line 2367
    :cond_d
    :goto_d
    return-void

    .line 2364
    :catch_e
    move-exception v0

    .line 2365
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

    .line 610
    move v1, v2

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 611
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 612
    if-ltz p0, :cond_16

    if-ne v1, p0, :cond_1a

    :cond_16
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 610
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 615
    :cond_1e
    const/16 v3, 0x64

    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 616
    iput v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 617
    if-gez p1, :cond_1a

    .line 618
    const/4 v3, -0x1

    iput v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    goto :goto_1a

    .line 621
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    :goto_39
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 622
    return-void

    .line 621
    :cond_3e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_39
.end method

.method public static adjustChannel(II)V
    .registers 9

    .prologue
    const/16 v1, 0xa

    .line 1472
    if-ltz p0, :cond_6

    if-lt p0, v1, :cond_7

    .line 1483
    :cond_6
    :goto_6
    return-void

    .line 1475
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1476
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    const/16 v4, 0x14

    const/16 v5, 0x64

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    aget v6, v0, p0

    if-lez p1, :cond_32

    move v0, v1

    :goto_26
    add-int/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v3, p0

    goto :goto_d

    :cond_32
    const/16 v0, -0xa

    goto :goto_26

    .line 1478
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_4b

    .line 1479
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_46

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    :goto_41
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    goto :goto_6

    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_41

    .line 1480
    :cond_4b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_6

    .line 1481
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    goto :goto_6
.end method

.method private static applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1656
    if-nez p0, :cond_6

    .line 1675
    :cond_5
    :goto_5
    return-void

    .line 1659
    :cond_6
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1660
    sput-boolean v6, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    .line 1661
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

    .line 1662
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    goto :goto_10

    .line 1664
    :cond_21
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1666
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

    .line 1667
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v1, :cond_5f

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    :goto_3f
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v6

    .line 1668
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v1, :cond_6e

    cmpl-double v1, v6, v4

    if-lez v1, :cond_6e

    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-ltz v1, :cond_6e

    .line 1669
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

    .line 1671
    goto :goto_2b

    .line 1667
    :cond_5f
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    goto :goto_3f

    .line 1672
    :cond_64
    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    .line 1673
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
    .line 134
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    .line 135
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 136
    return-void
.end method

.method private static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2307
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

    .line 2309
    :cond_11
    :goto_11
    return-object v0

    .line 2308
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static beginCalibration()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 538
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_8

    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 541
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->faceMode()V

    .line 542
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 543
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v4

    .line 544
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .line 545
    :goto_1e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 546
    iput v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 547
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 548
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 549
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    const/16 v6, 0x64

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    .line 550
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    .line 554
    iput v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 555
    const/4 v2, -0x1

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    .line 556
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_61

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v1, v6, v7, v2}, Lcom/isaigu/gymapp/ai/AutoHistory;->lastStrength(Landroid/content/Context;JLjava/lang/String;)I

    move-result v2

    :goto_5b
    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->prev:I

    goto :goto_24

    .line 544
    :cond_5e
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1e

    :cond_61
    move v2, v3

    .line 556
    goto :goto_5b

    .line 558
    :cond_63
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->calibRunS:D

    .line 559
    const/16 v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setWorkLengthAll(I)V

    .line 560
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 562
    :try_start_70
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_79

    .line 563
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_79} :catch_7d

    .line 568
    :cond_79
    :goto_79
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    .line 569
    return-void

    .line 565
    :catch_7d
    move-exception v0

    .line 566
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

    goto :goto_79
.end method

.method public static beginSetup(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 340
    sput v3, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    .line 341
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->loadOptions(Landroid/content/Context;)V

    .line 342
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->loadTips(Landroid/content/Context;)V

    .line 343
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 347
    new-instance v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/AutoSession$Row;-><init>()V

    .line 348
    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 349
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    iput-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 350
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v8

    .line 351
    if-eqz v8, :cond_163

    .line 352
    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    iput-wide v10, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    .line 353
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v2, :cond_49

    .line 354
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 356
    :cond_49
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_57

    .line 357
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 359
    :cond_57
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v2, :cond_65

    .line 360
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 362
    :cond_65
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 363
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    if-eqz v2, :cond_79

    .line 364
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    .line 366
    :cond_79
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->channelFat:[D

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 367
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    .line 368
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->leanKg:D

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    .line 369
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->skeletalKg:D

    iput-wide v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    .line 370
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->chMuscle:[D

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 371
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->muscleLow:Z

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    .line 372
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fatObese:Z

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    .line 373
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->measured:Z

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    .line 374
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->scaleFocus:Ljava/lang/String;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    .line 375
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v2, :cond_b9

    .line 376
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 378
    :cond_b9
    sget-object v9, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v10, v9

    move v2, v3

    :goto_bd
    if-ge v2, v10, :cond_d7

    aget-object v11, v9, v2

    .line 379
    iget-object v12, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 381
    :cond_d7
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 382
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 383
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    const-string v9, "diastasis"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 384
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 386
    :cond_fe
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_126

    .line 387
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v9

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 388
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->kindOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v9

    iput-object v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 389
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v9, :cond_149

    .line 390
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "drain"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 402
    :cond_126
    :goto_126
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->nameOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    .line 403
    iget-wide v8, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/ai/AutoHistory;->of(Landroid/content/Context;J)Lcom/isaigu/gymapp/ai/AutoHistory$Info;

    move-result-object v0

    .line 404
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->sessions:I

    iput v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 405
    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoHistory$Info;->lastActiveMs:J

    invoke-static {v8, v9, v4, v5}, Lcom/isaigu/gymapp/ai/AutoHistory;->hoursSince(JJ)D

    move-result-wide v8

    iput-wide v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 406
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 391
    :cond_149
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v9, :cond_156

    .line 392
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "cellulite"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_126

    .line 393
    :cond_156
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v8, :cond_126

    .line 394
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v8, "recovery"

    iput-object v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_126

    .line 398
    :cond_163
    sget-object v8, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v9, v8

    move v2, v3

    :goto_167
    if-ge v2, v9, :cond_126

    aget-object v10, v8, v2

    .line 399
    iget-object v11, v7, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_167

    .line 409
    :cond_17b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a6

    move-object v0, v1

    .line 410
    :goto_184
    if-eqz v0, :cond_18d

    .line 411
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 413
    :cond_18d
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 414
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 415
    sput v3, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    .line 416
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 417
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    .line 418
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->acquireBand(Landroid/app/Activity;)V

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    .line 420
    return-void

    .line 409
    :cond_1a6
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    goto :goto_184
.end method

.method public static buildPlan()V
    .registers 8

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x0

    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 499
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiIntensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-eqz v0, :cond_80

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiIntensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    :goto_13
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 500
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiSeconds:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 501
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    .line 503
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 504
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->copyOptions(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 505
    if-eqz v4, :cond_83

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v4, v3, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;

    move-result-object v3

    :goto_4b
    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    .line 506
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_69

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-gtz v3, :cond_69

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_69

    .line 507
    const-string v3, "\u041d\u044f\u043c\u0430 \u0440\u044a\u0441\u0442 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v6, "No height in the client record"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    .line 510
    :cond_69
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_dd

    if-eqz v4, :cond_dd

    .line 511
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v4, v3, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v1

    :goto_7e
    move v1, v0

    .line 513
    goto :goto_2c

    .line 499
    :cond_80
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->STANDARD:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    goto :goto_13

    .line 505
    :cond_83
    const/4 v3, 0x0

    goto :goto_4b

    .line 514
    :cond_85
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->restHrEstimate()I

    move-result v0

    .line 515
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 516
    if-eq v1, v2, :cond_a9

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    if-le v2, v1, :cond_a9

    .line 517
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 518
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 520
    :cond_a9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 521
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->activeS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 522
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_d4

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    :goto_d1
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_af

    :cond_d4
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AutoPlanner;->build(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    goto :goto_d1

    .line 524
    :cond_dc
    return-void

    :cond_dd
    move v0, v1

    goto :goto_7e
.end method

.method private static calibCap(DJ)V
    .registers 8

    .prologue
    .line 668
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 685
    :cond_6
    :goto_6
    return-void

    .line 671
    :cond_7
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->calibRunS:D

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->calibRunS:D

    .line 672
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->calibRunS:D

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_6

    .line 675
    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->calibRunS:D

    .line 676
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 677
    const/4 v2, -0x1

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    goto :goto_21

    .line 679
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 680
    const-string v0, "auto"

    const-string v1, "calibration 300 s \u2014 suit stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u0432\u0430\u043d\u0435\u0442\u043e \u0442\u0440\u0430\u0435 \u043d\u0430\u0434 5 \u043c\u0438\u043d \u2014 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435 \u0441\u043f\u0440\u044f\u0445\u0430. \u201e\u25b6 \u0421\u0442\u0430\u0440\u0442\u201c \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u0430\u0442\u0430 \u0441\u0438\u043b\u0430."

    const-string v1, "Setting up over 5 min \u2014 impulses stopped. \u25b6 Start goes on from the set strength."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_6
.end method

.method static calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 573
    const/4 v1, 0x0

    .line 574
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

    .line 575
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "WARMUP"

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 578
    if-eqz v1, :cond_30

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    iget v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    if-le v3, v4, :cond_8d

    :cond_30
    :goto_30
    move-object v1, v0

    .line 581
    goto :goto_c

    .line 582
    :cond_32
    if-nez v1, :cond_3f

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-object v1, v0

    .line 585
    :cond_3f
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 586
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

    .line 587
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4d

    .line 592
    :goto_61
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;-><init>()V

    .line 593
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    .line 594
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 595
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 596
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    .line 597
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    .line 598
    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    .line 599
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    .line 600
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->ceiling:D

    .line 601
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->phi:D

    .line 602
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->env:D

    .line 603
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->scale:D

    .line 604
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 605
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

    .line 933
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v1

    if-nez v1, :cond_8

    .line 938
    :cond_7
    :goto_7
    return v0

    .line 936
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    .line 937
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 938
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
    .line 724
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

    .line 725
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_6

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    if-lez v0, :cond_6

    .line 726
    const/4 v0, 0x1

    .line 729
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static channelShare(I)I
    .registers 3

    .prologue
    .line 1487
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    if-ltz p0, :cond_e

    const/16 v0, 0xa

    if-lt p0, v0, :cond_11

    :cond_e
    const/16 v0, 0x64

    :goto_10
    return v0

    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    aget v0, v0, p0

    goto :goto_10
.end method

.method public static channelStep(ILjava/lang/String;Z)I
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 1437
    if-ltz p0, :cond_8

    const/16 v0, 0xa

    if-lt p0, v0, :cond_a

    :cond_8
    move v1, v2

    .line 1462
    :goto_9
    return v1

    .line 1441
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_11
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1442
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 1445
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v7

    .line 1446
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    if-eqz v3, :cond_54

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    array-length v3, v3

    if-ge p0, v3, :cond_54

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    aget v3, v3, p0

    .line 1448
    :goto_34
    const-string v4, "off"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    move v3, v5

    .line 1455
    :cond_3d
    :goto_3d
    const/16 v4, 0x64

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1456
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v4, v7, p0

    sub-int v4, v3, v4

    aput v4, v0, p0

    .line 1457
    if-gez v1, :cond_81

    move v0, v3

    :goto_52
    move v1, v0

    .line 1460
    goto :goto_11

    .line 1446
    :cond_54
    aget v3, v7, p0

    goto :goto_34

    .line 1450
    :cond_57
    const-string v4, "on"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1451
    if-gtz v3, :cond_3d

    aget v3, v7, p0

    if-lez v3, :cond_68

    aget v3, v7, p0

    goto :goto_3d

    :cond_68
    const/16 v3, 0x32

    goto :goto_3d

    .line 1453
    :cond_6b
    const-string v4, "up"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/4 v4, 0x1

    :goto_74
    invoke-static {v3, p2}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->step(IZ)I

    move-result v8

    mul-int/2addr v4, v8

    add-int/2addr v3, v4

    goto :goto_3d

    :cond_7b
    move v4, v2

    goto :goto_74

    .line 1461
    :cond_7d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->refreshOutput()V

    goto :goto_9

    :cond_81
    move v0, v1

    goto :goto_52
.end method

.method public static close()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 876
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_11

    .line 877
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    .line 879
    :cond_11
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->setFace(Z)V

    .line 880
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    .line 881
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopTicker()V

    .line 882
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 883
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 884
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 885
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    .line 886
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 887
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_33

    .line 888
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->stop()V

    .line 890
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 891
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    .line 892
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    .line 893
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    .line 894
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 895
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 896
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 897
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 898
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->releaseBand()V

    .line 899
    return-void
.end method

.method public static conflict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    const-string v0, "auto"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/OutputOwner;->conflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_9

    .line 336
    :goto_8
    return-object v0

    .line 333
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-nez v0, :cond_18

    .line 334
    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a \u0438 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v1, "Add a participant and connect the suit."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 336
    :cond_18
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 425
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 426
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 427
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 428
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatPct:D

    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->channelFat:[D

    .line 430
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->readiness:D

    .line 431
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    .line 432
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    .line 433
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 434
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->muscleLow:Z

    .line 435
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fatObese:Z

    .line 436
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->measured:Z

    .line 437
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->scaleFocus:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 439
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 440
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    .line 445
    return-void
.end method

.method private static copyOptions(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 454
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    .line 455
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 456
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->totalSeconds:Ljava/lang/Integer;

    .line 458
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiIntensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiIntensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiSeconds:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiSeconds:Ljava/lang/Integer;

    .line 461
    return-void
.end method

.method public static currentExercise()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1634
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

    .line 1640
    :cond_15
    :goto_15
    return v0

    .line 1637
    :cond_16
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v1

    .line 1638
    if-eqz v1, :cond_15

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_23

    move-result v0

    goto :goto_15

    .line 1639
    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method private static currentMet()D
    .registers 2

    .prologue
    .line 1627
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->currentExercise()I

    move-result v0

    .line 1628
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
    .line 861
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_d

    .line 862
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->stop(J)V

    .line 864
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 865
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 866
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 867
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 868
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_27

    .line 869
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->finishToReport()V

    .line 873
    :cond_26
    :goto_26
    return-void

    .line 870
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_26

    .line 871
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    goto :goto_26
.end method

.method private static engineEvents(J)V
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 2190
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_b

    .line 2226
    :cond_a
    :goto_a
    return-void

    .line 2193
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCorridorExt()I

    move-result v0

    .line 2194
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    if-le v0, v1, :cond_189

    .line 2195
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

    .line 2196
    invoke-virtual {v3, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 2197
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

    .line 2195
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 2201
    :cond_8e
    :goto_8e
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    .line 2202
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getDoseExt()I

    move-result v0

    .line 2203
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    if-le v0, v1, :cond_d3

    .line 2204
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

    .line 2207
    :cond_d3
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    .line 2208
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRaiseLocked()Z

    move-result v0

    .line 2209
    if-eqz v0, :cond_ec

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    if-nez v1, :cond_ec

    .line 2210
    const-string v1, "\u0414\u043e\u0437\u0430\u0442\u0430 \u0435 20 % \u043d\u0430\u0434 \u043f\u043b\u0430\u043d\u0430 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0435 \u0441\u0435 \u043a\u0430\u0447\u0432\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u0432 \u0442\u0430\u0437\u0438 \u0441\u0435\u0441\u0438\u044f"

    const-string v2, "Dose 20 % above plan \u2014 no more raising this session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 2213
    :cond_ec
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    .line 2214
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoseStopped()Z

    move-result v0

    if-eqz v0, :cond_107

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    if-nez v0, :cond_107

    .line 2215
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    .line 2216
    const-string v0, "\u0411\u044e\u0434\u0436\u0435\u0442\u044a\u0442 \u043d\u0430 \u0434\u043e\u0437\u0430\u0442\u0430 \u0435 \u0438\u0437\u0447\u0435\u0440\u043f\u0430\u043d \u2014 \u043a\u044a\u043c \u043e\u0445\u043b\u0430\u0436\u0434\u0430\u043d\u0435"

    const-string v1, "Dose budget used up \u2014 to the cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 2219
    :cond_107
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    .line 2220
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

    .line 2222
    sput-wide p0, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    .line 2223
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

    .line 2198
    :cond_189
    if-nez v0, :cond_8e

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    if-lez v1, :cond_8e

    .line 2199
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
    .line 2331
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 2332
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_11

    .line 2340
    :cond_10
    :goto_10
    return-void

    .line 2336
    :cond_11
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 2337
    :catch_17
    move-exception v0

    .line 2338
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

.method private static faceMode()V
    .registers 1

    .prologue
    .line 1392
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setFace(Z)V

    .line 1393
    return-void

    .line 1392
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static facePw()I
    .registers 1

    .prologue
    .line 1383
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    if-lez v0, :cond_7

    .line 1384
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    .line 1387
    :goto_6
    return v0

    .line 1386
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1387
    :goto_d
    if-eqz v0, :cond_1d

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    goto :goto_6

    .line 1386
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_d

    .line 1387
    :cond_1d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static feedLive(J)V
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1742
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_c

    .line 1777
    :cond_b
    :goto_b
    return-void

    .line 1745
    :cond_c
    const/4 v1, 0x0

    .line 1746
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

    .line 1747
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v3, :cond_13

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v3, :cond_13

    move-object v6, v0

    .line 1752
    :goto_28
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v8

    .line 1754
    if-eqz v6, :cond_90

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_90

    if-eqz v8, :cond_90

    .line 1755
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

    .line 1756
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_cf

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1757
    :goto_56
    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v8, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v0

    .line 1758
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

    .line 1759
    :goto_6f
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v3

    .line 1760
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

    .line 1761
    :goto_8b
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    .line 1762
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    move v7, v2

    .line 1766
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

    .line 1767
    :cond_a6
    sput-wide p0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastMs:J

    .line 1769
    :try_start_a8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecastFrom(J)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    .line 1770
    if-eqz v0, :cond_b

    .line 1771
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_b2} :catch_b4

    goto/16 :goto_b

    .line 1773
    :catch_b4
    move-exception v0

    .line 1774
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

    .line 1756
    :cond_cf
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_56

    .line 1758
    :cond_d2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_6f

    :cond_d5
    move v2, v7

    .line 1760
    goto :goto_8b

    :cond_d7
    move-object v6, v1

    goto/16 :goto_28
.end method

.method private static finishToReport()V
    .registers 12

    .prologue
    .line 1215
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 1216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->unbindMainKeys(Z)V

    .line 1217
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 1218
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->hide()V

    .line 1219
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoLook;->restore()V

    .line 1221
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/AutoSession$Finished;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoSession$Finished;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1222
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    if-nez v0, :cond_7b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_7b

    .line 1223
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->recorded:Z

    .line 1224
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_79

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1225
    :goto_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1226
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3a
    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1227
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v1, :cond_3a

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v1, :cond_3a

    .line 1228
    iget-wide v1, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getImpulseS()D

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoHistory;->record(Landroid/content/Context;JZDJ)V

    .line 1229
    iget-wide v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v4, v4

    iget-wide v10, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    mul-double/2addr v4, v10

    .line 1230
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 1229
    invoke-static {v0, v2, v3, v1, v4}, Lcom/isaigu/gymapp/ai/AutoHistory;->rememberStrength(Landroid/content/Context;JLjava/lang/String;I)V

    goto :goto_3a

    .line 1224
    :cond_79
    const/4 v0, 0x0

    goto :goto_30

    .line 1234
    :cond_7b
    return-void
.end method

.method private static full(II)[I
    .registers 3

    .prologue
    .line 64
    new-array v0, p0, [I

    .line 65
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 66
    return-object v0
.end method

.method public static getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;
    .registers 1

    .prologue
    .line 1650
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    return-object v0
.end method

.method public static getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    return-object v0
.end method

.method static getForecast()Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
    .registers 1

    .prologue
    .line 812
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    return-object v0
.end method

.method public static getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;
    .registers 1

    .prologue
    .line 201
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    return-object v0
.end method

.method public static getKcal()D
    .registers 2

    .prologue
    .line 1646
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
    .line 217
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
    .line 221
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastNoticeKind()I
    .registers 1

    .prologue
    .line 294
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    return v0
.end method

.method public static getLastNoticeMs()J
    .registers 2

    .prologue
    .line 298
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    return-wide v0
.end method

.method static getPanelRoot()Landroid/view/View;
    .registers 1

    .prologue
    .line 2416
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    return-object v0
.end method

.method public static getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 205
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
    .line 213
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    return-object v0
.end method

.method static getScript()Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 1

    .prologue
    .line 735
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    return-object v0
.end method

.method public static getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    return-object v0
.end method

.method static getWritten()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
    .registers 1

    .prologue
    .line 1134
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    return-object v0
.end method

.method private static goTime(J)J
    .registers 4

    .prologue
    .line 1073
    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static guard(J)V
    .registers 24

    .prologue
    .line 1876
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-nez v2, :cond_5

    .line 2127
    :cond_4
    :goto_4
    return-void

    .line 1879
    :cond_5
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_5b

    const/4 v2, 0x1

    move v9, v2

    .line 1880
    :goto_d
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    move-object v10, v2

    .line 1881
    :goto_18
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_61

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_61

    const/4 v2, 0x1

    .line 1882
    :goto_27
    if-nez v9, :cond_63

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v3, :cond_63

    .line 1883
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v3

    .line 1884
    if-eqz v3, :cond_63

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_63

    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v3, :cond_63

    if-eqz v2, :cond_63

    .line 1885
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1886
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1887
    const-string v2, "\u0421\u043f\u0440\u044f\u043d\u043e \u043e\u0442 \u043e\u0441\u043d\u043e\u0432\u043d\u0438\u044f \u0435\u043a\u0440\u0430\u043d \u2014 \u0410\u0432\u0442\u043e \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v3, "Stopped from the main screen \u2014 Auto paused."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;JZ)V

    .line 1889
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto :goto_4

    .line 1879
    :cond_5b
    const/4 v2, 0x0

    move v9, v2

    goto :goto_d

    .line 1880
    :cond_5e
    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_18

    .line 1881
    :cond_61
    const/4 v2, 0x0

    goto :goto_27

    .line 1893
    :cond_63
    if-nez v9, :cond_8a

    if-nez v2, :cond_8a

    .line 1895
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

    .line 1896
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1897
    if-eqz v2, :cond_6d

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-eqz v2, :cond_6d

    .line 1898
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto/16 :goto_4

    .line 1905
    :cond_8a
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1906
    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v11

    .line 1907
    if-eqz v11, :cond_90

    .line 1910
    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-ne v3, v4, :cond_ce

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-ne v3, v4, :cond_ce

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/4 v4, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    .line 1911
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v3, v4, :cond_ce

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    const/4 v4, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eq v3, v4, :cond_120

    :cond_ce
    const/4 v3, 0x1

    .line 1912
    :goto_cf
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v4, :cond_122

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-lez v4, :cond_122

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-eqz v4, :cond_122

    const/4 v4, 0x1

    .line 1913
    :goto_e2
    iget-boolean v6, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v4, :cond_f3

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->steadyDouble(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Z

    move-result v2

    if-eqz v2, :cond_124

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/4 v7, 0x2

    if-lt v2, v7, :cond_124

    :cond_f3
    const/4 v2, 0x1

    :goto_f4
    if-ne v6, v2, :cond_100

    if-eqz v4, :cond_126

    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v4, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-eq v2, v4, :cond_126

    :cond_100
    const/4 v2, 0x1

    .line 1915
    :goto_101
    if-nez v3, :cond_105

    if-eqz v2, :cond_90

    .line 1918
    :cond_105
    if-nez v9, :cond_10b

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v4, :cond_128

    .line 1919
    :cond_10b
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1920
    const-string v2, "\u041f\u0440\u0438 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v3, "During calibration frequency and pauses belong to the program."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1911
    :cond_120
    const/4 v3, 0x0

    goto :goto_cf

    .line 1912
    :cond_122
    const/4 v4, 0x0

    goto :goto_e2

    .line 1913
    :cond_124
    const/4 v2, 0x0

    goto :goto_f4

    :cond_126
    const/4 v2, 0x0

    goto :goto_101

    .line 1924
    :cond_128
    if-eqz v2, :cond_172

    if-nez v3, :cond_172

    .line 1925
    iget-boolean v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1926
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseAvailable()Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 1927
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v3, v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1928
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v2

    .line 1929
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1930
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1931
    const-string v2, "double_main"

    const-string v3, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u043b\u0435\u043a \u043d\u0438\u0441\u043a\u043e\u0447\u0435\u0441\u0442\u043e\u0442\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430. \u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0440\u0435\u0448\u0430\u0432\u0430 \u0432 \u043a\u043e\u0438 \u0444\u0430\u0437\u0438."

    const-string v4, "Double impulse: a light low-frequency pulse in the pause. The program decides in which phases."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1934
    :cond_15c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1935
    const-string v2, "\u0422\u0430\u0437\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 / \u0444\u0430\u0437\u0430 \u043d\u044f\u043c\u0430 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v3, "No double impulse in this program / phase."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1940
    :cond_172
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-eq v2, v3, :cond_251

    iget v4, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1941
    :goto_17c
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/4 v3, 0x1

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v2, v3, :cond_254

    iget v5, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1942
    :goto_18b
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    const/4 v3, 0x1

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eq v2, v3, :cond_257

    .line 1943
    const/4 v2, 0x1

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoEngine;->getOffExtension()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1944
    :goto_1a6
    iget v2, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-eq v2, v3, :cond_25a

    iget v7, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1945
    :goto_1b0
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    move-wide/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoEngine;->userParams(IIIIJ)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v8

    .line 1946
    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1947
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1948
    if-lez v4, :cond_1c4

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    if-ne v2, v4, :cond_1d8

    :cond_1c4
    if-lez v5, :cond_1ca

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    if-ne v2, v5, :cond_1d8

    :cond_1ca
    if-lez v6, :cond_1d2

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget v3, v11, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-ne v2, v3, :cond_1d8

    :cond_1d2
    if-lez v7, :cond_25d

    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-eq v2, v7, :cond_25d

    :cond_1d8
    const/4 v2, 0x1

    move v3, v2

    .line 1950
    :goto_1da
    if-eqz v10, :cond_261

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-nez v2, :cond_261

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-nez v2, :cond_261

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-nez v2, :cond_261

    iget-object v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-nez v2, :cond_261

    const/4 v2, 0x1

    .line 1951
    :goto_1f5
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

    .line 1952
    if-eqz v2, :cond_263

    .line 1953
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

    .line 1940
    :cond_251
    const/4 v4, -0x1

    goto/16 :goto_17c

    .line 1941
    :cond_254
    const/4 v5, -0x1

    goto/16 :goto_18b

    .line 1943
    :cond_257
    const/4 v6, -0x1

    goto/16 :goto_1a6

    .line 1944
    :cond_25a
    const/4 v7, -0x1

    goto/16 :goto_1b0

    .line 1948
    :cond_25d
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1da

    .line 1950
    :cond_261
    const/4 v2, 0x0

    goto :goto_1f5

    .line 1955
    :cond_263
    if-eqz v3, :cond_29a

    .line 1956
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

    .line 1957
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1956
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    .line 1959
    :cond_29a
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

    .line 1960
    invoke-static {v10, v8}, Lcom/isaigu/gymapp/ai/AutoSession;->windowText(Lcom/isaigu/gymapp/ai/AutoModel$Phase;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1959
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 1965
    :cond_2d0
    const/4 v13, 0x0

    .line 1966
    const/4 v4, 0x0

    .line 1967
    const/4 v11, 0x0

    .line 1968
    const/4 v10, 0x0

    .line 1969
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v5, v10

    move-object v3, v11

    move v6, v13

    :cond_2dd
    :goto_2dd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7ef

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1970
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v14

    .line 1971
    if-eqz v14, :cond_2dd

    .line 1974
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_32e

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1975
    :goto_2f8
    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v7, :cond_817

    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v7, :cond_817

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    if-eqz v7, :cond_817

    .line 1976
    const/16 v7, 0xa

    new-array v12, v7, [I

    .line 1977
    const/4 v11, 0x0

    .line 1978
    const/4 v7, 0x0

    move v10, v7

    :goto_30d
    const/16 v7, 0xa

    if-ge v10, v7, :cond_333

    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v7, v7

    if-ge v10, v7, :cond_333

    .line 1979
    iget-object v7, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v7, v7, v10

    aput v7, v12, v10

    .line 1980
    aget v7, v12, v10

    iget-object v13, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    aget v13, v13, v10

    if-eq v7, v13, :cond_331

    const/4 v7, 0x1

    :goto_329
    or-int/2addr v11, v7

    .line 1978
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto :goto_30d

    .line 1974
    :cond_32e
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_2f8

    .line 1980
    :cond_331
    const/4 v7, 0x0

    goto :goto_329

    .line 1982
    :cond_333
    if-eqz v11, :cond_3bd

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v7, :cond_3bd

    .line 1986
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZonesRaw(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v6

    .line 1987
    const/4 v2, 0x0

    :goto_340
    const/16 v7, 0xa

    if-ge v2, v7, :cond_386

    .line 1988
    aget v7, v12, v2

    iget-object v10, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    aget v10, v10, v2

    if-ne v7, v10, :cond_34f

    .line 1987
    :goto_34c
    add-int/lit8 v2, v2, 0x1

    goto :goto_340

    .line 1991
    :cond_34f
    aget v7, v6, v2

    if-lez v7, :cond_37f

    .line 1992
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

    .line 1993
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    const/4 v10, 0x0

    aput v10, v7, v2

    goto :goto_34c

    .line 1995
    :cond_37f
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v10, v12, v2

    aput v10, v7, v2

    goto :goto_34c

    .line 1998
    :cond_386
    if-nez v5, :cond_81d

    .line 1999
    const-string v2, "calib_zone"

    .line 2000
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

    .line 2003
    :goto_3a8
    const/4 v3, 0x1

    move v10, v5

    move-object v11, v2

    move-object v12, v4

    move v13, v3

    .line 2046
    :goto_3ad
    iget v0, v14, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move/from16 v16, v0

    .line 2047
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_4d3

    move v5, v10

    move-object v3, v11

    move-object v4, v12

    move v6, v13

    .line 2048
    goto/16 :goto_2dd

    .line 2004
    :cond_3bd
    if-eqz v11, :cond_817

    .line 2005
    iget-object v6, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v6, :cond_3e1

    .line 2006
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

    .line 2007
    const/4 v2, 0x1

    .line 2043
    :goto_3db
    const/4 v5, 0x1

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    goto :goto_3ad

    .line 2010
    :cond_3e1
    sget-object v6, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v11

    .line 2011
    const/16 v6, 0xa

    new-array v7, v6, [I

    .line 2012
    const/4 v6, 0x0

    :goto_3ec
    const/16 v10, 0xa

    if-ge v6, v10, :cond_407

    .line 2013
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

    .line 2012
    add-int/lit8 v6, v6, 0x1

    goto :goto_3ec

    .line 2015
    :cond_407
    invoke-static {v7, v11, v2}, Lcom/isaigu/gymapp/ai/AutoLimits;->clampZones([I[ILcom/isaigu/gymapp/ai/AutoModel$Plan;)[I

    move-result-object v13

    .line 2016
    const/4 v6, 0x0

    :goto_40c
    const/16 v7, 0xa

    if-ge v6, v7, :cond_41d

    .line 2017
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v10, v13, v6

    aget v16, v11, v6

    sub-int v10, v10, v16

    aput v10, v7, v6

    .line 2016
    add-int/lit8 v6, v6, 0x1

    goto :goto_40c

    .line 2019
    :cond_41d
    const/4 v6, -0x1

    .line 2020
    const/4 v10, -0x1

    .line 2021
    const/4 v7, 0x0

    :goto_420
    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v7, v0, :cond_447

    .line 2022
    aget v16, v13, v7

    aget v17, v12, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_433

    if-gez v6, :cond_433

    move v6, v7

    .line 2025
    :cond_433
    aget v16, v12, v7

    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_444

    if-gez v10, :cond_444

    move v10, v7

    .line 2021
    :cond_444
    add-int/lit8 v7, v7, 0x1

    goto :goto_420

    .line 2029
    :cond_447
    if-ltz v6, :cond_469

    .line 2030
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

    .line 2031
    const/4 v2, 0x1

    goto/16 :goto_3db

    .line 2032
    :cond_469
    if-ltz v10, :cond_814

    if-nez v5, :cond_814

    .line 2033
    const-string v3, "zone"

    .line 2034
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

    .line 2035
    iget v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_4ab

    .line 2036
    const-string v2, " % \u2014 \u043f\u0430\u0437\u0438 \u0441\u0435 \u0434\u043e \u043a\u0440\u0430\u044f. \u0421\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0437\u043e\u043d\u0430\u0442\u0430 \u0435 \u0442\u0432\u043e\u044f."

    const-string v6, " % \u2014 kept to the end. The zone\'s strength is yours."

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2040
    :goto_4a0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v5

    goto/16 :goto_3db

    :cond_4ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " % \u2014 \u043f\u0430\u0437\u0438 \u0441\u0435 \u0434\u043e \u043a\u0440\u0430\u044f. \u041d\u0430\u0434\u043e\u043b\u0443 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e, \u043d\u0430\u0433\u043e\u0440\u0435 \u0434\u043e +"

    const-string v10, " % \u2014 kept to the end. Down freely, up to +"

    .line 2038
    invoke-static {v7, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneDelta:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430."

    const-string v7, " over the program."

    .line 2040
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a0

    .line 2050
    :cond_4d3
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v2, :cond_4f5

    .line 2051
    const/4 v13, 0x1

    .line 2052
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

    .line 2053
    const/4 v10, 0x1

    move v5, v10

    move-object v3, v11

    move v6, v13

    .line 2054
    goto/16 :goto_2dd

    .line 2056
    :cond_4f5
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_549

    .line 2057
    const/4 v2, -0x1

    iput v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    .line 2058
    move/from16 v0, v16

    invoke-static {v8, v0, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V

    .line 2059
    if-nez v10, :cond_80e

    .line 2060
    const-string v11, "strength_down"

    .line 2061
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

    .line 2062
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, v10

    move-object v3, v11

    move v6, v13

    goto/16 :goto_2dd

    .line 2067
    :cond_549
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2068
    if-nez v9, :cond_80b

    .line 2069
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_61e

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v6, v2

    .line 2070
    :goto_562
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 2071
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v4, :cond_623

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_623

    .line 2073
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

    .line 2084
    :goto_585
    iget v3, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    iget-wide v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    .line 2085
    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    const/16 v5, 0x64

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 2086
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

    .line 2087
    invoke-static {v8, v14, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->acceptStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;IZ)V

    .line 2088
    move/from16 v0, v16

    if-ge v14, v0, :cond_79d

    .line 2089
    const/4 v13, 0x1

    .line 2090
    const/4 v12, 0x1

    .line 2091
    if-lt v14, v3, :cond_678

    const/16 v2, 0x64

    if-ge v14, v2, :cond_678

    .line 2092
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

    if-eqz v9, :cond_671

    const-string v2, "\u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    :goto_5e3
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

    .line 2093
    if-eqz v9, :cond_675

    const-string v2, "second"

    :goto_604
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2092
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v10, v12

    :goto_619
    move v5, v10

    move-object v3, v11

    move v6, v13

    .line 2116
    goto/16 :goto_2dd

    .line 2069
    :cond_61e
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v6, v2

    goto/16 :goto_562

    .line 2077
    :cond_623
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v2

    .line 2078
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_65c

    iget v4, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-le v14, v4, :cond_65c

    .line 2079
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

    .line 2081
    :cond_65c
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

    goto/16 :goto_585

    .line 2092
    :cond_671
    const-string v2, "\u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441"

    goto/16 :goto_5e3

    .line 2093
    :cond_675
    const-string v2, "pulse"

    goto :goto_604

    .line 2094
    :cond_678
    if-nez v9, :cond_77d

    .line 2095
    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_771

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v10, v2

    .line 2096
    :goto_681
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v16

    .line 2097
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

    .line 2098
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

    .line 2099
    if-eqz v16, :cond_776

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    :goto_6db
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

    .line 2101
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

    .line 2102
    if-eqz v16, :cond_77a

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    :goto_72e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2097
    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2103
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRaiseLocked()Z

    move-result v3

    if-eqz v3, :cond_76d

    .line 2104
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

    :cond_76d
    move v10, v12

    move-object v4, v2

    .line 2106
    goto/16 :goto_619

    .line 2095
    :cond_771
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v10, v2

    goto/16 :goto_681

    .line 2099
    :cond_776
    const-string v2, ""

    goto/16 :goto_6db

    .line 2102
    :cond_77a
    const-string v2, ""

    goto :goto_72e

    .line 2107
    :cond_77d
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

    goto/16 :goto_619

    .line 2109
    :cond_79d
    if-nez v10, :cond_808

    .line 2110
    if-eqz v9, :cond_7e3

    const-string v2, "calib_up"

    .line 2111
    :goto_7a3
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

    .line 2112
    if-eqz v9, :cond_7e6

    const-string v3, ". \u041a\u0430\u0447\u0432\u0430\u0439 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435, \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430."

    const-string v5, ". Raise to the target feeling, at most +5 per second."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2114
    :goto_7d8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v2

    goto/16 :goto_619

    .line 2110
    :cond_7e3
    const-string v2, "strength_up"

    goto :goto_7a3

    .line 2114
    :cond_7e6
    const-string v3, ". \u041d\u0430\u0433\u043e\u0440\u0435 \u2014 \u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430, +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v5, ". Up \u2014 to the phase ceiling, +5 per pulse."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7d8

    .line 2117
    :cond_7ef
    if-eqz v6, :cond_7f6

    .line 2118
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 2120
    :cond_7f6
    if-eqz v4, :cond_4

    .line 2121
    if-nez v5, :cond_801

    .line 2122
    move-wide/from16 v0, p0

    invoke-static {v3, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 2124
    :cond_801
    move-wide/from16 v0, p0

    invoke-static {v4, v5, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto/16 :goto_4

    :cond_808
    move-object v4, v12

    goto/16 :goto_619

    :cond_80b
    move v2, v14

    goto/16 :goto_585

    :cond_80e
    move v5, v10

    move-object v3, v11

    move-object v4, v12

    move v6, v13

    goto/16 :goto_2dd

    :cond_814
    move v2, v5

    goto/16 :goto_3db

    :cond_817
    move v10, v5

    move-object v11, v3

    move-object v12, v4

    move v13, v6

    goto/16 :goto_3ad

    :cond_81d
    move-object v2, v3

    goto/16 :goto_3a8
.end method

.method public static isActive()Z
    .registers 2

    .prologue
    .line 191
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

    .line 319
    if-eqz p0, :cond_a

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_b

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 321
    :cond_a
    :goto_a
    return v0

    .line 320
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static isGuest()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 695
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public static isNewTip(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 242
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
    .line 2287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2288
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_b

    move-object v0, v1

    .line 2302
    :goto_a
    return-object v0

    .line 2292
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 2293
    if-eqz v0, :cond_36

    .line 2294
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

    .line 2295
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2296
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_17

    .line 2300
    :catch_35
    move-exception v0

    :cond_36
    move-object v0, v1

    .line 2302
    goto :goto_a
.end method

.method public static lastCycleMs()J
    .registers 2

    .prologue
    .line 1497
    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    return-wide v0
.end method

.method static leader()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 2

    .prologue
    .line 2282
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    .line 2283
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

.method public static leaderBlock()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1525
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    goto :goto_9
.end method

.method public static leaderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1516
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    goto :goto_a
.end method

.method private static leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;
    .registers 4

    .prologue
    .line 1539
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 1540
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

    .line 1541
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v3, v1, :cond_a

    .line 1545
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static leaderRunning()Z
    .registers 2

    .prologue
    .line 1210
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1211
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

.method public static leaderStrength()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1502
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 1512
    :goto_a
    return v0

    .line 1505
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_20

    .line 1506
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_a

    .line 1508
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;

    move-result-object v0

    .line 1509
    if-nez v0, :cond_28

    move v0, v1

    .line 1510
    goto :goto_a

    .line 1512
    :cond_28
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-ltz v1, :cond_2f

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    goto :goto_a

    :cond_2f
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->strengthOf(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    goto :goto_a
.end method

.method public static leaderUserId()J
    .registers 2

    .prologue
    .line 1520
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userId:J

    goto :goto_a
.end method

.method public static leaderZones()[I
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1492
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    if-nez v0, :cond_17

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_16
.end method

.method private static limitText(Lcom/isaigu/gymapp/ai/AutoSession$Row;Z)Ljava/lang/String;
    .registers 10

    .prologue
    .line 2131
    if-nez p1, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v0, :cond_11

    .line 2132
    :cond_e
    const-string v0, ""

    .line 2136
    :goto_10
    return-object v0

    .line 2134
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v4, v0

    .line 2135
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

    .line 2136
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

    .line 2134
    :cond_59
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v4, v0

    goto :goto_18
.end method

.method private static loadOptions(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 2380
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 2381
    if-nez p0, :cond_a

    .line 2395
    :goto_9
    return-void

    .line 2385
    :cond_a
    :try_start_a
    const-string v0, "auto_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2386
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "goal"

    const-string v3, "TONE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 2387
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "kind"

    const-string v3, "ACTIVE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 2388
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "program"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 2389
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "operator"

    const-string v3, "TRAINER"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Operator;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 2390
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "intensity"

    const-string v3, "STANDARD"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 2391
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "double"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 2392
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    const-string v2, "exercises"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_72} :catch_73

    goto :goto_9

    .line 2393
    :catch_73
    move-exception v0

    goto :goto_9
.end method

.method private static loadTips(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 261
    if-nez p0, :cond_4

    .line 275
    :cond_3
    :goto_3
    return-void

    .line 265
    :cond_4
    :try_start_4
    const-string v1, "auto_tips"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    const-string v2, "on"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 267
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 268
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

    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 270
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_37} :catch_3a

    .line 268
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 273
    :catch_3a
    move-exception v0

    goto :goto_3
.end method

.method public static mainKeyState()I
    .registers 2

    .prologue
    .line 962
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 963
    const/4 v0, -0x1

    .line 966
    :goto_7
    return v0

    .line 965
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 966
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
    .line 927
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

    .line 928
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    .line 927
    :goto_1f
    return v0

    .line 928
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static mainStartPause()V
    .registers 4

    .prologue
    .line 970
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_b

    .line 987
    :cond_a
    :goto_a
    return-void

    .line 973
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 974
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 975
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_31

    .line 976
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 977
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 978
    const-string v2, "\u041f\u0430\u0443\u0437\u0430. \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430, \u25a0 \u2014 \u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    const-string v3, "Paused. \u25b6 resumes, \u25a0 \u2014 to the recovery."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 986
    :goto_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto :goto_a

    .line 980
    :cond_31
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4a

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 981
    const-string v2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u0432\u0438\u0441\u043e\u043a \u2014 \u25b6 \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u043f\u0430\u0434\u043d\u0435."

    const-string v3, "HR is high \u2014 \u25b6 unlocks when it drops."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_2d

    .line 984
    :cond_4a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    goto :goto_2d
.end method

.method public static mainStop()V
    .registers 5

    .prologue
    .line 994
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_b

    .line 1018
    :cond_a
    :goto_a
    return-void

    .line 997
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 998
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 999
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_1d

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_ab

    .line 1000
    :cond_1d
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_34

    .line 1001
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->cancelCountdown(J)V

    .line 1002
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 1003
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 1006
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_43

    .line 1007
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1009
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1010
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

    .line 1011
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

    .line 1012
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

    .line 1010
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 1017
    :goto_a0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto/16 :goto_a

    .line 1011
    :cond_a5
    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435."

    goto :goto_67

    .line 1012
    :cond_a8
    const-string v0, "to the recovery."

    goto :goto_90

    .line 1015
    :cond_ab
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    goto :goto_a0
.end method

.method public static markTip(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 246
    if-eqz p0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 247
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveTips(Landroid/content/Context;)V

    .line 249
    :cond_17
    return-void

    .line 247
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static nameOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 2321
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 2322
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 2326
    :goto_12
    return-object v0

    .line 2324
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

    .line 2325
    :catch_1d
    move-exception v0

    .line 2326
    const-string v0, ""

    goto :goto_12
.end method

.method public static next()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 817
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v1, v2, :cond_c

    .line 829
    :cond_b
    :goto_b
    return v0

    .line 820
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 821
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 822
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->next(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 825
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v4, :cond_2b

    .line 826
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 828
    :cond_2b
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V

    .line 829
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static nextFromPanel()V
    .registers 8

    .prologue
    .line 944
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 958
    :goto_6
    return-void

    .line 947
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSkippedS()D

    move-result-wide v0

    .line 948
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->next()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 949
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getSkippedS()D

    move-result-wide v2

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 950
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v0

    .line 951
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v0, "\u043a\u044a\u043c \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435\u0442\u043e"

    const-string v1, "to the recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 954
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

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 954
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 957
    :cond_84
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->refresh()V

    goto/16 :goto_6

    .line 952
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

    .line 953
    :cond_bc
    const-string v0, "\u043a\u044a\u043c \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0447\u0430\u0441\u0442"

    const-string v1, "to the next part"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35

    .line 954
    :cond_c6
    const-string v1, ""

    goto :goto_70
.end method

.method static notice(Ljava/lang/String;IJ)V
    .registers 8

    .prologue
    .line 2160
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 2186
    :cond_8
    :goto_8
    return-void

    .line 2163
    :cond_9
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    if-ge p1, v0, :cond_17

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 2166
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2167
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 2168
    sput p1, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    .line 2169
    sput-wide p2, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeMs:J

    .line 2170
    if-nez v0, :cond_47

    .line 2171
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

    .line 2173
    :cond_47
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 2176
    const/4 v0, 0x2

    if-ge p1, v0, :cond_62

    sget-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastGuardToastMs:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 2179
    :cond_62
    sput-wide p2, Lcom/isaigu/gymapp/ai/AutoSession;->lastGuardToastMs:J

    .line 2181
    :try_start_64
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2182
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

    .line 2184
    :catch_77
    move-exception v0

    goto :goto_8
.end method

.method private static notice(Ljava/lang/String;JZ)V
    .registers 5

    .prologue
    .line 2152
    if-eqz p3, :cond_7

    const/4 v0, 0x2

    :goto_3
    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 2153
    return-void

    .line 2152
    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static nudge(I)V
    .registers 15

    .prologue
    .line 1530
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1531
    const-wide v4, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    const-wide v10, 0x3fa999999999999aL    # 0.05

    if-lez p0, :cond_31

    const/4 v1, 0x1

    :goto_23
    int-to-double v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    goto :goto_6

    :cond_31
    const/4 v1, -0x1

    goto :goto_23

    .line 1533
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_4b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_4b

    .line 1534
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1536
    :cond_4b
    return-void
.end method

.method private static onCountdown(J)V
    .registers 8

    .prologue
    .line 1078
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getGoMs()J

    move-result-wide v0

    .line 1079
    sget-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 1087
    :goto_c
    return-void

    .line 1082
    :cond_d
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 1083
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoBeep;->countdown(J)V

    .line 1084
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1085
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    sub-long/2addr v0, p0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1086
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->refresh()V

    goto :goto_c
.end method

.method private static onGo(J)V
    .registers 4

    .prologue
    .line 1091
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->go()V

    .line 1092
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 1093
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1094
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_19

    .line 1096
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 1098
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 1099
    return-void
.end method

.method public static onHeartRate(I)V
    .registers 5

    .prologue
    .line 166
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    sput p0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHr:I

    .line 168
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastBandHrMs:J

    .line 169
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->SETUP:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_14

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_28

    .line 170
    :cond_14
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 171
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aput p0, v3, v2

    .line 172
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->restRingMs:[J

    aput-wide v0, v3, v2

    .line 173
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    .line 175
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_37

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_37

    .line 176
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1, p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->onHr(JI)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    .line 181
    :cond_37
    :goto_37
    return-void

    .line 178
    :catch_38
    move-exception v0

    .line 179
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
    .line 140
    if-eqz p0, :cond_15

    :try_start_2
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_15

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-ne p0, v0, :cond_15

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    .line 162
    :cond_14
    :goto_14
    return-void

    .line 144
    :cond_15
    if-eqz p0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-ne p0, v0, :cond_14

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_14

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastHookMs:J

    .line 149
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 150
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->onCycle(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v3

    .line 151
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v4, :cond_65

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v4, v5, :cond_65

    .line 152
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->onGo(J)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4a} :catch_4b

    goto :goto_14

    .line 159
    :catch_4b
    move-exception v0

    .line 160
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

    goto :goto_14

    .line 153
    :cond_65
    if-eqz v3, :cond_6f

    :try_start_67
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v3, v4, :cond_6f

    .line 154
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    goto :goto_14

    .line 155
    :cond_6f
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_14

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v3, v4, :cond_14

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 157
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_83} :catch_4b

    goto :goto_14
.end method

.method private static onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1114
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1115
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_66

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p0, v0, :cond_66

    .line 1116
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p0, v0, :cond_19

    .line 1117
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->end()V

    .line 1118
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->flashSetEnd()V

    .line 1120
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestBeforeCooldown()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1121
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

    .line 1130
    :cond_66
    :goto_66
    return-void

    .line 1126
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

    .line 1127
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s, then \u25b6 Start."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p1, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_66
.end method

.method public static ownsOutput()Z
    .registers 2

    .prologue
    .line 185
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_24

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 186
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 187
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    .line 185
    :goto_25
    return v0

    .line 187
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

    .line 1143
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1144
    if-eqz v4, :cond_e

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_10

    .line 1145
    :cond_e
    const/4 v0, 0x0

    .line 1148
    :goto_f
    return-object v0

    .line 1147
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

    .line 1148
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

    .line 1149
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

    .line 1148
    goto :goto_f

    :cond_5c
    move v0, v2

    .line 1147
    goto :goto_27

    :cond_5e
    move v1, v2

    .line 1148
    goto :goto_49
.end method

.method public static raiseAll()V
    .registers 12

    .prologue
    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1166
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 1167
    :goto_10
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 1168
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1169
    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    aput v3, v5, v1

    .line 1170
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 1167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1172
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_a1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_a1

    .line 1173
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    move v1, v2

    move v3, v2

    .line 1175
    :goto_4c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7e

    .line 1176
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1177
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    aget v7, v5, v1

    if-le v6, v7, :cond_67

    move v3, v4

    .line 1175
    :cond_63
    :goto_63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4c

    .line 1179
    :cond_67
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-lez v6, :cond_63

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v6, :cond_63

    .line 1180
    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    goto :goto_63

    .line 1183
    :cond_7e
    if-eqz v3, :cond_ad

    .line 1184
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1185
    :goto_8e
    const-string v1, "btn_raise"

    if-eqz v4, :cond_a4

    const-string v0, "+5 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438, \u043d\u043e \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0444\u0430\u0437\u0430\u0442\u0430 \u0438 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v2, "+5 % for all, never above the phase ceiling and at most +5 per pulse."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    :goto_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1185
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1194
    :cond_a1
    :goto_a1
    return-void

    :cond_a2
    move v4, v2

    .line 1184
    goto :goto_8e

    .line 1187
    :cond_a4
    const-string v0, "+5 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 \u0442\u0432\u043e\u044f; \u043f\u043b\u0430\u0432\u043d\u043e, \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e +5 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441."

    const-string v2, "+5 % for all \u2014 the strength is yours; gradually, at most +5 per pulse."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9a

    .line 1190
    :cond_ad
    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u043d\u0430 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c\u0430"

    const-string v1, "The strength is at its maximum"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1190
    invoke-static {v0, v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_a1
.end method

.method public static reduceAll()V
    .registers 8

    .prologue
    .line 1154
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

    .line 1155
    const-wide v2, 0x3fc999999999999aL    # 0.2

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    goto :goto_6

    .line 1157
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

    .line 1158
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1160
    :cond_3e
    const-string v0, "btn_reduce"

    const-string v1, "\u221210 % \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u0440\u0435\u0434\u043e\u0432\u0435. \u041d\u0435 \u0441\u0435 \u0432\u0440\u044a\u0449\u0430 \u0441\u0430\u043c\u043e \u2014 \u0432\u044a\u0440\u043d\u0438 \u0441 \u201e+5 %\u201c \u0438\u043b\u0438 \u0441 + \u043d\u0430 \u0440\u0435\u0434\u0430."

    const-string v2, "\u221210 % for all rows. Not given back automatically \u2014 use +5 % or the row\'s +."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1160
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->tip(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1162
    return-void
.end method

.method private static refreshOutput()V
    .registers 2

    .prologue
    .line 1466
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_1e

    .line 1467
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1469
    :cond_1e
    return-void
.end method

.method private static releaseBand()V
    .registers 4

    .prologue
    .line 2371
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

    .line 2375
    :goto_f
    return-void

    .line 2371
    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 2372
    :catch_12
    move-exception v0

    .line 2373
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
    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    const/4 v0, 0x0

    :goto_a
    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->restCount:I

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_40

    .line 306
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

    .line 307
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->restRing:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 310
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_49

    .line 311
    const/4 v0, -0x1

    .line 314
    :goto_48
    return v0

    .line 313
    :cond_49
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 314
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

.method private static riseTick()V
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 643
    const/4 v0, 0x0

    .line 644
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 645
    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    if-ltz v4, :cond_9

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 648
    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 649
    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    if-lt v5, v6, :cond_2e

    .line 650
    const/4 v4, -0x1

    iput v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    goto :goto_9

    .line 653
    :cond_2e
    if-lez v4, :cond_9

    .line 656
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 657
    const-wide/16 v4, 0x0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    iget v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    sub-int v8, v1, v8

    int-to-double v8, v8

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    .line 658
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    move v1, v2

    .line 660
    goto :goto_9

    .line 661
    :cond_4d
    if-eqz v1, :cond_58

    .line 662
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_59

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    :goto_55
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 664
    :cond_58
    return-void

    .line 662
    :cond_59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_55
.end method

.method public static riseToLast(I)V
    .registers 7

    .prologue
    .line 626
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_7

    .line 639
    :cond_6
    return-void

    .line 629
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 630
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 631
    if-ltz p0, :cond_1d

    if-ne v1, p0, :cond_25

    :cond_1d
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_25

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->prev:I

    if-gtz v2, :cond_29

    .line 629
    :cond_25
    :goto_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 636
    :cond_29
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->prev:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 637
    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    if-le v2, v3, :cond_3e

    :goto_3b
    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    goto :goto_25

    :cond_3e
    const/4 v2, -0x1

    goto :goto_3b
.end method

.method private static rowStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)I
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 1679
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1692
    :goto_5
    return v0

    .line 1682
    :cond_6
    if-eqz p2, :cond_15

    .line 1683
    const/16 v1, 0x64

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 1685
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v1, v0

    .line 1686
    :goto_1c
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v10

    .line 1688
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 1690
    :goto_2c
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    iget v8, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    move-wide v2, v10

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/ai/AutoLimits;->rowStrength(IDDDI)I

    move-result v0

    .line 1691
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_5

    .line 1685
    :cond_3a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v1, v0

    goto :goto_1c

    .line 1689
    :cond_3e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->envMax:D

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowCeiling(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;DD)D

    move-result-wide v6

    goto :goto_2c

    :cond_4e
    move-wide v6, v10

    goto :goto_2c
.end method

.method private static rowZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1722
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1723
    :goto_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v5

    .line 1725
    const/16 v1, 0xa

    new-array v6, v1, [I

    move v1, v2

    move v3, v2

    .line 1726
    :goto_11
    array-length v4, v6

    if-ge v1, v4, :cond_2d

    .line 1727
    aget v4, v5, v1

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v7, v7, v1

    add-int/2addr v4, v7

    aput v4, v6, v1

    .line 1728
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    aget v4, v4, v1

    if-eqz v4, :cond_2b

    const/4 v4, 0x1

    :goto_24
    or-int/2addr v3, v4

    .line 1726
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1722
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_7

    :cond_2b
    move v4, v2

    .line 1728
    goto :goto_24

    .line 1730
    :cond_2d
    if-nez v3, :cond_31

    move-object v0, v5

    .line 1733
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

    .line 472
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iput p1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 473
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 475
    :try_start_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leader()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v2, :cond_1a

    .line 492
    :cond_19
    :goto_19
    return-void

    .line 479
    :cond_1a
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 480
    iput p1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 481
    const-string v2, "com.isaigu.gymapp.widget.XemsLocalStore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_2b
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 483
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

    .line 484
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 485
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

    .line 489
    :catch_59
    move-exception v0

    .line 490
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

    .line 482
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method private static saveOptions(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 2398
    if-nez p0, :cond_3

    .line 2413
    :goto_2
    return-void

    .line 2402
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

    .line 2403
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "kind"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 2404
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "program"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 2405
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "operator"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 2406
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Operator;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intensity"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->intensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 2407
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 2408
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exercises"

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->exercises:Z

    .line 2409
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_67} :catch_68

    goto :goto_2

    .line 2411
    :catch_68
    move-exception v0

    goto :goto_2
.end method

.method private static saveTips(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 278
    if-nez p0, :cond_3

    .line 290
    :goto_2
    return-void

    .line 282
    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
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

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2c

    const-string v1, ","

    :goto_22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 288
    :catch_2a
    move-exception v0

    goto :goto_2

    .line 284
    :cond_2c
    const-string v1, ""

    goto :goto_22

    .line 286
    :cond_2f
    const-string v0, "auto_tips"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 287
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
    .line 528
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    .line 529
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 530
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 531
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 532
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 533
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    .line 534
    return-object v0
.end method

.method public static setDoublePulse(Z)V
    .registers 5

    .prologue
    .line 1197
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_27

    .line 1198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1199
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, p0, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoublePulse(ZJ)V

    .line 1200
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_27

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_27

    .line 1201
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->refresh(J)Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    .line 1202
    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1203
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1206
    :cond_27
    return-void
.end method

.method private static setFace(Z)V
    .registers 5

    .prologue
    .line 1397
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->setFace(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 1401
    :goto_3
    return-void

    .line 1398
    :catch_4
    move-exception v0

    .line 1399
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static setFacePw(I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1372
    int-to-float v0, p0

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    .line 1373
    if-gtz p0, :cond_21

    move v0, v1

    :goto_e
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    .line 1374
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_33

    .line 1375
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    :goto_1c
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    .line 1379
    :cond_20
    :goto_20
    return-void

    .line 1373
    :cond_21
    const/16 v2, 0x32

    const/16 v3, 0x96

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_e

    .line 1375
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    goto :goto_1c

    .line 1376
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_20

    .line 1377
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V

    goto :goto_20
.end method

.method public static setTips(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 233
    sput-boolean p1, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    .line 234
    if-eqz p1, :cond_9

    .line 235
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->seenTips:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 237
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveTips(Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method private static setWorkLengthAll(I)V
    .registers 3

    .prologue
    .line 2343
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

    .line 2344
    iput p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_8

    .line 2346
    :cond_17
    return-void
.end method

.method public static startDirect(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 704
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_8

    .line 705
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 707
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->faceMode()V

    .line 708
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 709
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 710
    iput v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 711
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 712
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 713
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 714
    iput v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 715
    const/4 v2, -0x1

    iput v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->target:I

    goto :goto_17

    .line 717
    :cond_3b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->startRunNow(Landroid/content/Context;)V

    .line 718
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u043d\u0430. \u041a\u0430\u0447\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441 + \u043d\u0430 \u0440\u0435\u0434\u0430 \u0434\u043e \u043f\u0440\u0438\u044f\u0442\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    const-string v1, "The program has started. Raise the strength with + on the row to a comfortable feel."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 718
    invoke-static {v0, v4, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    .line 721
    return-void
.end method

.method private static startEnergy()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 1549
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 1550
    sput-boolean v11, Lcom/isaigu/gymapp/ai/AutoSession;->epocClosed:Z

    .line 1551
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 1553
    :try_start_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;

    move-result-object v1

    .line 1554
    if-eqz v1, :cond_57

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_57

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-object v10, v0

    .line 1555
    :goto_17
    if-eqz v1, :cond_5b

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_5b

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1556
    :goto_1f
    iget-object v1, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v1, :cond_2a

    iget-object v1, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v1, :cond_2a

    const/4 v11, 0x1

    .line 1557
    :cond_2a
    iget-object v1, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v2, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    iget-wide v3, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    iget-object v5, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget-wide v6, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->leanKg:D

    iget-wide v8, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->skeletalKg:D

    iget-object v10, v10, Lcom/isaigu/gymapp/ai/AutoModel$Input;->chMuscle:[D

    .line 1558
    iget-boolean v12, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRestMeasured:Z

    if-eqz v12, :cond_5e

    iget v12, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrRest:I

    :goto_3e
    iget v13, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->hrMax:I

    .line 1557
    invoke-static/range {v1 .. v13}, Lcom/isaigu/gymapp/ai/AiEnergy;->forPerson(Lcom/isaigu/gymapp/ai/AiModel$Sex;IDLcom/isaigu/gymapp/ai/AiModel$Fitness;DD[DZII)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 1559
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    if-lez v0, :cond_60

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    :goto_54
    sput v0, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    .line 1563
    :goto_56
    return-void

    .line 1554
    :cond_57
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-object v10, v0

    goto :goto_17

    .line 1555
    :cond_5b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_5d} :catch_63

    goto :goto_1f

    .line 1558
    :cond_5e
    const/4 v12, -0x1

    goto :goto_3e

    .line 1559
    :cond_60
    const/16 v0, 0x15e

    goto :goto_54

    .line 1560
    :catch_63
    move-exception v0

    .line 1561
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

    .line 1037
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v3, :cond_d

    .line 1050
    :cond_c
    :goto_c
    return v0

    .line 1040
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1041
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v4, v5, :cond_29

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startReady()Z

    move-result v4

    if-nez v4, :cond_29

    .line 1042
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->waitReason(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_c

    .line 1045
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 1046
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->goTime(J)J

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->requestGo(JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1049
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    move v0, v1

    .line 1050
    goto :goto_c
.end method

.method public static startReady()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1022
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v1, :cond_6

    .line 1029
    :cond_5
    :goto_5
    return v0

    .line 1025
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1026
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_26

    .line 1027
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

    .line 1029
    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v0

    goto :goto_5
.end method

.method public static startRun(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 739
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-nez v0, :cond_b

    .line 743
    :cond_a
    :goto_a
    return-void

    .line 742
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->startRunNow(Landroid/content/Context;)V

    goto :goto_a
.end method

.method private static startRunNow(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 746
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-nez v0, :cond_b

    .line 808
    :goto_a
    return-void

    .line 749
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->saveOptions(Landroid/content/Context;)V

    .line 750
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 751
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v1, :cond_2d

    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    :goto_26
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 752
    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 753
    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_14

    :cond_2d
    move v1, v2

    .line 751
    goto :goto_26

    .line 755
    :cond_2f
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->limitAge:I

    .line 756
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 757
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_3b

    .line 758
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

    goto :goto_3b

    .line 761
    :cond_60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->faceMode()V

    .line 762
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;-><init>(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    .line 763
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_87

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    if-gtz v0, :cond_7c

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    if-gtz v0, :cond_7c

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    if-lez v0, :cond_87

    .line 764
    :cond_7c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    sget v4, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    sget v5, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->setVeto(III)V

    .line 766
    :cond_87
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startEnergy()V

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 768
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 769
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->preload(Landroid/content/Context;)V

    .line 771
    :try_start_93
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a3

    move v0, v3

    :goto_9a
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    .line 772
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->script(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    .line 773
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    if-eqz v0, :cond_d3

    .line 774
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
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_d3} :catch_1a6

    .line 779
    :cond_d3
    :goto_d3
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->setScript(Lcom/isaigu/gymapp/ai/AutoTemplates$Script;)V

    .line 781
    :try_start_da
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_1c1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_1c1

    move v0, v3

    :goto_e9
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    .line 782
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecastScale:D

    .line 783
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->script:Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    sget-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecastDouble:Z

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->forecast(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoTemplates$Script;Z)Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    .line 784
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->dose:D

    invoke-virtual {v0, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->setDoseBudget(D)V

    .line 785
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneDose:[D

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->zoneExDose:[D

    invoke-virtual {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->setZoneBudget([D[D)V
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_111} :catch_1c4

    .line 790
    :goto_111
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenCorridorExt:I

    .line 791
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseExt:I

    .line 792
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenRaiseLocked:Z

    .line 793
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->seenDoseStop:Z

    .line 794
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->hrNearMs:J

    .line 795
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastNotice:Ljava/lang/String;

    .line 796
    sput v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastNoticeKind:I

    .line 797
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    .line 799
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->totalS:I

    add-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setWorkLengthAll(I)V

    .line 800
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    .line 801
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 802
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ensureDeviceRunning()V

    .line 803
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->goTime(J)J

    move-result-wide v2

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->startAt(JJ)V

    .line 804
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    .line 805
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

    .line 806
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

    .line 805
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startTicker()V

    goto/16 :goto_a

    :cond_1a3
    move v0, v2

    .line 771
    goto/16 :goto_9a

    .line 776
    :catch_1a6
    move-exception v0

    .line 777
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

    goto/16 :goto_d3

    :cond_1c1
    move v0, v2

    .line 781
    goto/16 :goto_e9

    .line 786
    :catch_1c4
    move-exception v0

    .line 787
    sput-object v8, Lcom/isaigu/gymapp/ai/AutoSession;->forecast:Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;

    .line 788
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

    goto/16 :goto_111
.end method

.method private static startTicker()V
    .registers 4

    .prologue
    .line 1239
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    .line 1241
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1242
    return-void
.end method

.method private static steadyDouble(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Z
    .registers 2

    .prologue
    .line 1844
    if-eqz p0, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1845
    :cond_18
    const/4 v0, 0x0

    .line 1847
    :goto_19
    return v0

    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->isDoublePulseOn()Z

    move-result v0

    goto :goto_19

    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    goto :goto_19
.end method

.method private static stepZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1697
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->stepZonesRaw(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v2

    move v0, v1

    .line 1698
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_28

    .line 1699
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

    .line 1698
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1701
    :cond_28
    return-object v2
.end method

.method private static stepZonesRaw(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1706
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v3, v0

    .line 1707
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

    .line 1708
    :goto_17
    array-length v4, v0

    if-ge v1, v4, :cond_44

    .line 1709
    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    aget v4, v4, v1

    if-nez v4, :cond_28

    .line 1710
    aput v2, v0, v1

    .line 1712
    :cond_28
    aget v4, v0, v1

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v0, v1

    .line 1708
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1706
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-object v3, v0

    goto :goto_8

    .line 1707
    :cond_3b
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->zones:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_16

    .line 1714
    :cond_44
    return-object v0
.end method

.method public static stop()V
    .registers 5

    .prologue
    .line 837
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_a

    .line 838
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    .line 857
    :cond_9
    :goto_9
    return-void

    .line 841
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_9

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 845
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 846
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 847
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->stopPress(J)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 848
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->end()V

    goto :goto_9

    .line 851
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 852
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

    .line 856
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto :goto_9
.end method

.method private static stopDevice()V
    .registers 4

    .prologue
    .line 2349
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->clear()V

    .line 2351
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_c

    .line 2352
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 2357
    :cond_c
    :goto_c
    return-void

    .line 2354
    :catch_d
    move-exception v0

    .line 2355
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
    .line 1245
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1246
    return-void
.end method

.method private static strengthOf(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 2

    .prologue
    .line 2314
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 2315
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static strengthStep(IZ)I
    .registers 14

    .prologue
    .line 1409
    const/4 v0, -0x1

    .line 1410
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1411
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->block:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 1414
    const/4 v3, 0x0

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    if-ltz v2, :cond_57

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    :goto_1f
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1415
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->step(IZ)I

    move-result v6

    mul-int/2addr v6, p0

    add-int/2addr v2, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1416
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v2, :cond_5a

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 1417
    :goto_3a
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v3, :cond_5d

    if-eqz v2, :cond_5d

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget-wide v6, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phiMax:D

    invoke-static {v3, v6, v7}, Lcom/isaigu/gymapp/ai/AutoEngine;->rowFrac(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;D)D

    move-result-wide v2

    .line 1418
    :goto_48
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    if-gtz v6, :cond_60

    .line 1419
    iput v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    .line 1420
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 1424
    :cond_52
    :goto_52
    if-gez v1, :cond_7d

    move v0, v4

    :goto_55
    move v1, v0

    .line 1427
    goto :goto_8

    .line 1414
    :cond_57
    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    goto :goto_1f

    .line 1416
    :cond_5a
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    goto :goto_3a

    .line 1417
    :cond_5d
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_48

    .line 1421
    :cond_60
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_52

    .line 1422
    const-wide v6, 0x3fa999999999999aL    # 0.05

    int-to-double v8, v4

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->cal:I

    int-to-double v10, v10

    mul-double/2addr v2, v10

    div-double v2, v8, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    goto :goto_52

    .line 1428
    :cond_79
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->refreshOutput()V

    .line 1429
    return v1

    :cond_7d
    move v0, v1

    goto :goto_55
.end method

.method static syncLeaderInput()V
    .registers 3

    .prologue
    .line 465
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 466
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->copyClient(Lcom/isaigu/gymapp/ai/AutoModel$Input;Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 468
    :cond_18
    return-void
.end method

.method private static tick()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1290
    const-wide/16 v0, 0x0

    sget-wide v4, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1291
    sput-wide v2, Lcom/isaigu/gymapp/ai/AutoSession;->lastTickMs:J

    .line 1292
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_48

    .line 1293
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

    .line 1294
    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    mul-double v8, v10, v4

    add-double/2addr v6, v8

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    goto :goto_26

    .line 1296
    :cond_3e
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->guard(J)V

    .line 1297
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->riseTick()V

    .line 1298
    invoke-static {v4, v5, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->calibCap(DJ)V

    .line 1357
    :cond_47
    :goto_47
    return-void

    .line 1301
    :cond_48
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_47

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-eqz v0, :cond_47

    .line 1305
    :try_start_52
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_79

    .line 1306
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 1307
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1308
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0430\u0442\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043f\u043e\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0410\u0432\u0442\u043e \u0435 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v1, "Music sync took the strength \u2014 Auto paused."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;JZ)V

    .line 1310
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_79} :catch_1b5

    .line 1314
    :cond_79
    :goto_79
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->guard(J)V

    .line 1315
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->feedLive(J)V

    .line 1316
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 1317
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->tick(J)V

    .line 1318
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->traceTick(J)V

    .line 1319
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v1

    .line 1320
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->engineEvents(J)V

    .line 1321
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_15c

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_15c

    .line 1322
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onGo(J)V

    .line 1326
    :cond_a3
    :goto_a3
    if-eq v0, v1, :cond_a8

    .line 1327
    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onStateChange(Lcom/isaigu/gymapp/ai/AutoEngine$State;J)V

    .line 1329
    :cond_a8
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_165

    .line 1330
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v4

    .line 1331
    if-eqz v4, :cond_bb

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->lastApplied:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eq v4, v5, :cond_bb

    .line 1332
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoSession;->applyCycle(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)V

    .line 1337
    :cond_bb
    :goto_bb
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->tickEnergy(JLcom/isaigu/gymapp/ai/AutoEngine$State;)V

    .line 1338
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v1, v4, :cond_c6

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_f0

    :cond_c6
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession;->stage:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v4, v5, :cond_f0

    .line 1339
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    .line 1340
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stopDevice()V

    .line 1341
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->finishToReport()V

    .line 1342
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 1343
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

    .line 1345
    :cond_f0
    if-eq v0, v1, :cond_47

    .line 1346
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

    .line 1347
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_16e

    .line 1348
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

    goto/16 :goto_47

    .line 1323
    :cond_15c
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v4, :cond_a3

    .line 1324
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AutoSession;->onCountdown(J)V

    goto/16 :goto_a3

    .line 1334
    :cond_165
    sget-boolean v4, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    if-nez v4, :cond_bb

    .line 1335
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto/16 :goto_bb

    .line 1350
    :cond_16e
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoEngine$State;->HR_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v4, :cond_47

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v1, v0, :cond_47

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0441\u043f\u0430\u0434\u043d\u0430 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043c\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    if-eqz v0, :cond_1b2

    .line 1352
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoEngine;->getReentry()D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 1351
    :goto_192
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

    .line 1354
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->show()V

    goto/16 :goto_47

    .line 1352
    :cond_1b2
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_192

    .line 1312
    :catch_1b5
    move-exception v0

    goto/16 :goto_79
.end method

.method private static tickEnergy(JLcom/isaigu/gymapp/ai/AutoEngine$State;)V
    .registers 13

    .prologue
    .line 1571
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v0, :cond_9

    .line 1623
    :cond_8
    :goto_8
    return-void

    .line 1574
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq p2, v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne p2, v0, :cond_22

    .line 1575
    :cond_11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 1576
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->epocClosed:Z

    if-nez v0, :cond_8

    .line 1577
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->epocClosed:Z

    .line 1578
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->closeEpoc()V

    goto :goto_8

    .line 1582
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getHr(J)I

    move-result v0

    int-to-double v4, v0

    .line 1583
    const/4 v0, 0x0

    .line 1584
    const-wide/16 v2, 0x0

    .line 1585
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderRow()Lcom/isaigu/gymapp/ai/AutoSession$Row;

    move-result-object v6

    .line 1586
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

    .line 1587
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 1588
    if-eqz v2, :cond_fe

    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v1, :cond_fe

    .line 1589
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1590
    if-nez v3, :cond_60

    iget-boolean v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_fe

    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-lez v1, :cond_fe

    .line 1591
    :cond_60
    new-instance v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 1592
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_7b

    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_7b

    .line 1593
    iget-object v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 1595
    :cond_7b
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_8d

    .line 1596
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    .line 1598
    :cond_8d
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 1599
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 1600
    if-eqz v3, :cond_e1

    .line 1601
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 1602
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 1610
    :goto_a0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    .line 1611
    const/4 v0, 0x0

    :goto_a8
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    array-length v2, v2

    if-ge v0, v2, :cond_fd

    .line 1612
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    if-eqz v2, :cond_f3

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_f3

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    aget v2, v2, v0

    int-to-double v2, v2

    .line 1613
    :goto_bb
    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v8, v2, v8

    .line 1614
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

    .line 1611
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 1604
    :cond_e1
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 1605
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 1606
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-double v2, v0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 1607
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    goto :goto_a0

    .line 1612
    :cond_f3
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_bb

    .line 1614
    :cond_f6
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->calPw:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->channelSent(II)D

    move-result-wide v2

    goto :goto_ca

    :cond_fd
    move-object v0, v1

    .line 1619
    :cond_fe
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->currentMet()D

    move-result-wide v2

    move-object v6, v0

    .line 1621
    :goto_103
    sput-wide v2, Lcom/isaigu/gymapp/ai/AiEnergy;->exerciseMet:D

    .line 1622
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
    .line 253
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->isNewTip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 258
    :goto_6
    return-void

    .line 256
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoSession;->markTip(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/isaigu/gymapp/ai/AutoSession;->notice(Ljava/lang/String;IJ)V

    goto :goto_6
.end method

.method public static tipsOn()Z
    .registers 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->tipsOn:Z

    return v0
.end method

.method public static togglePause()V
    .registers 4

    .prologue
    .line 903
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    if-nez v0, :cond_5

    .line 919
    :cond_4
    :goto_4
    return-void

    .line 906
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 907
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    .line 908
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->COUNTDOWN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_27

    .line 909
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->cancelCountdown(J)V

    .line 910
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBeep;->cancel()V

    .line 911
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->goNow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 912
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/AutoSession;->beepsForGoMs:J

    goto :goto_4

    .line 913
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->REST:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v2, v3, :cond_33

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoEngine;->canResume()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 914
    :cond_33
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->startNext()Z

    goto :goto_4

    .line 915
    :cond_37
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_4

    .line 916
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AutoEngine;->userPause(J)V

    .line 917
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->zeroOutput()V

    goto :goto_4
.end method

.method static waitReason(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1055
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestLeftS(J)I

    move-result v0

    .line 1056
    if-lez v0, :cond_59

    .line 1057
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

    .line 1060
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRestMinS()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s to refill their energy (phosphocreatine) \u2014 otherwise the next set starts tired."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    :goto_58
    return-object v0

    .line 1063
    :cond_59
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->engine:Lcom/isaigu/gymapp/ai/AutoEngine;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoEngine;->isRestHrHigh(J)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1064
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

    .line 1066
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

    .line 1064
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 1068
    :cond_c4
    const-string v0, ""

    goto :goto_58
.end method

.method private static who(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 2230
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 2231
    const-string v0, ""

    .line 2233
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

    .line 2254
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    if-nez v0, :cond_c

    .line 2255
    :cond_9
    const-string v0, ""

    .line 2276
    :goto_b
    return-object v0

    .line 2257
    :cond_c
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 2258
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

    .line 2259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2260
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hz:Z

    if-eqz v0, :cond_4b

    .line 2261
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    int-to-double v4, v0

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->hzShare:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2262
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

    .line 2264
    :cond_4b
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->on:Z

    if-eqz v0, :cond_8c

    .line 2265
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

    .line 2266
    invoke-static {v5, p0}, Lcom/isaigu/gymapp/ai/AutoLimits;->onMax(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    :cond_8c
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->off:Z

    if-eqz v0, :cond_c9

    .line 2269
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

    .line 2270
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v5, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    :cond_c9
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Window;->pw:Z

    if-eqz v0, :cond_100

    .line 2273
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

    .line 2274
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

    .line 2276
    :cond_100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 2265
    :cond_106
    const-string v0, ""

    goto/16 :goto_57

    .line 2269
    :cond_10a
    const-string v0, ""

    goto :goto_98

    .line 2273
    :cond_10d
    const-string v0, ""

    goto :goto_d5
.end method

.method private static writeRows(Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1783
    if-nez p0, :cond_5

    .line 1840
    :cond_4
    :goto_4
    return-void

    .line 1786
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiRamp;->set(II)V

    .line 1787
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1788
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1789
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 1790
    if-eqz v6, :cond_14

    .line 1793
    invoke-static {v0, p0, p1}, Lcom/isaigu/gymapp/ai/AutoSession;->rowStrength(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;Z)I

    move-result v7

    .line 1794
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AutoSession;->rowZones(Lcom/isaigu/gymapp/ai/AutoSession$Row;Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;)[I

    move-result-object v8

    .line 1795
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    if-lez v1, :cond_46

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v1, :cond_46

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1796
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->facePwUs:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    .line 1798
    :cond_46
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 1799
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pwUs:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 1800
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 1801
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 1802
    iput v7, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1805
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    if-lez v1, :cond_b6

    if-lez v7, :cond_b6

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->pauseAllowed(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-eqz v1, :cond_b6

    move v4, v3

    .line 1807
    :goto_6f
    if-nez v4, :cond_7c

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->steadyDouble(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/4 v9, 0x2

    if-lt v1, v9, :cond_b8

    :cond_7c
    move v1, v3

    :goto_7d
    iput-boolean v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1808
    if-eqz v4, :cond_ba

    .line 1809
    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseHz:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 1810
    int-to-double v10, v7

    iget-wide v12, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->pauseSigma:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v1, v10

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1817
    :cond_94
    :goto_94
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_c8

    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_c8

    move v1, v2

    .line 1818
    :goto_9f
    array-length v4, v8

    iget-object v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v9, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_c8

    .line 1819
    iget-object v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v9, v8, v1

    aput v9, v4, v1

    .line 1818
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_b6
    move v4, v2

    .line 1805
    goto :goto_6f

    :cond_b8
    move v1, v2

    .line 1807
    goto :goto_7d

    .line 1811
    :cond_ba
    iget-boolean v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_94

    .line 1812
    iput v2, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1813
    iget v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    if-gtz v1, :cond_94

    .line 1814
    const/4 v1, 0x7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    goto :goto_94

    .line 1822
    :cond_c8
    iput v7, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1823
    iput-object v8, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenZones:[I

    .line 1824
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_e2

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_e2

    .line 1825
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1828
    :cond_e2
    :try_start_e2
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e7} :catch_e9

    goto/16 :goto_14

    .line 1829
    :catch_e9
    move-exception v0

    .line 1830
    const-string v1, "auto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onParamsChange: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1834
    :cond_104
    :try_start_104
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_107} :catch_112

    .line 1837
    :goto_107
    if-nez p1, :cond_4

    .line 1838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoSession;->feedLive(J)V

    goto/16 :goto_4

    .line 1835
    :catch_112
    move-exception v0

    goto :goto_107
.end method

.method private static zeroOutput()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1851
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoSession;->zeroed:Z

    .line 1852
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-object v1, v0

    .line 1853
    :goto_b
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;

    .line 1854
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoSession;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 1855
    if-eqz v6, :cond_11

    .line 1858
    iput v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 1859
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->steadyDouble(Lcom/isaigu/gymapp/ai/AutoSession$Row;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    if-eqz v2, :cond_38

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    const/4 v7, 0x2

    if-lt v2, v7, :cond_65

    :cond_38
    move v2, v3

    :goto_39
    iput-boolean v2, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 1860
    iput v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 1861
    iput v4, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 1863
    :try_start_3f
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_11

    .line 1864
    :catch_45
    move-exception v0

    .line 1865
    const-string v2, "auto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zero: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1852
    :cond_5f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->calibrationCmd()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    :cond_65
    move v2, v4

    .line 1859
    goto :goto_39

    .line 1868
    :cond_67
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->written:Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    .line 1869
    return-void
.end method

.method private static zoneReason(IIILcom/isaigu/gymapp/ai/AutoModel$Plan;[I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 2238
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoCues;->zoneNames()[Ljava/lang/String;

    move-result-object v0

    .line 2239
    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneLocked:[Z

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_30

    .line 2240
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

    .line 2249
    :goto_2f
    return-object v0

    .line 2242
    :cond_30
    iget-object v1, p3, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zoneMax:[I

    aget v1, v1, p0

    if-le p1, v1, :cond_60

    .line 2243
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

    .line 2245
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

    .line 2246
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

    .line 2247
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

    .line 2249
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
