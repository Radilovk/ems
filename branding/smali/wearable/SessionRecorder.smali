.class public final Lcom/isaigu/gymapp/wearable/SessionRecorder;
.super Ljava/lang/Object;
.source "SessionRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;
    }
.end annotation


# static fields
.field static final END_CONFIRM_S:I = 0x2

.field private static final H:Landroid/os/Handler;

.field static final HR_FRESH_MS:J = 0x1f40L

.field private static final LAST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/isaigu/gymapp/wearable/SessionRec;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_PAUSE_S:I = 0x708

.field static final MIN_ACTIVE_S:I = 0x3c

.field private static final OPEN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/isaigu/gymapp/wearable/SessionRec;",
            ">;"
        }
    .end annotation
.end field

.field private static final PENDING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/SessionRec;",
            ">;"
        }
    .end annotation
.end field

.field private static final POST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/SessionRec;",
            ">;"
        }
    .end annotation
.end field

.field static final POST_S:I = 0x3c

.field static final TYPE_MASSAGE:I = 0x3

.field private static app:Landroid/content/Context;

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    return-object v0
.end method

.method private static aiPhase()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 454
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v2, :cond_a

    .line 460
    :cond_9
    :goto_9
    return v0

    .line 457
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_27} :catch_2b

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 459
    :catch_2b
    move-exception v1

    goto :goto_9
.end method

.method private static assistActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 420
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 422
    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v3, :cond_19

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v3, :cond_19

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v2, v1, :cond_19

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_1b

    if-ne v2, v1, :cond_1a

    :cond_19
    const/4 v0, 0x1

    .line 425
    :cond_1a
    :goto_1a
    return v0

    .line 424
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private static autoProgram()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 432
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v1, v2, :cond_f

    .line 433
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    if-nez v1, :cond_10

    .line 438
    :cond_f
    :goto_f
    return-object v0

    .line 436
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_f

    .line 437
    :catch_1b
    move-exception v1

    goto :goto_f
.end method

.method private static boardUp()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 319
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 322
    :cond_12
    :goto_12
    return v0

    .line 321
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method private static close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V
    .registers 13

    .prologue
    const/16 v6, 0x3c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    if-nez p1, :cond_10

    .line 364
    :goto_f
    return-void

    .line 331
    :cond_10
    iput-wide p2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 332
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onEnd(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 333
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/NextClient;->onClosed(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    .line 334
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_20

    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_31

    .line 335
    :cond_20
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->deltLevel()I

    move-result v3

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([IILjava/lang/String;Z)V

    .line 337
    :cond_31
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    if-ge v2, v6, :cond_60

    .line 338
    const-string v0, "report"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session dropped ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s active) user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 341
    :cond_60
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->remember(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 342
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session end user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_d4

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v2

    if-lez v2, :cond_d4

    move v2, v0

    .line 346
    :goto_b5
    if-eqz p4, :cond_c9

    .line 348
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 349
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v3, :cond_d6

    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->boardUp()Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 350
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_c9
    :goto_c9
    if-eqz v2, :cond_da

    .line 356
    iput v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 357
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_d4
    move v2, v1

    .line 345
    goto :goto_b5

    .line 352
    :cond_d6
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_c9

    .line 359
    :cond_da
    if-nez p4, :cond_e3

    .line 360
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v2, :cond_ea

    :goto_e0
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 362
    :cond_e3
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto/16 :goto_f

    :cond_ea
    move v0, v1

    .line 360
    goto :goto_e0
.end method

.method public static ensure(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 59
    if-nez p0, :cond_3

    .line 69
    :cond_2
    :goto_2
    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 63
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->started:Z

    if-nez v0, :cond_2

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->started:Z

    .line 67
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    const-string v0, "report"

    const-string v1, "session recorder on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static finishAssisted()V
    .registers 7

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 301
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 302
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/SessionRec;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v1, :cond_13

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_13

    .line 311
    :catch_39
    move-exception v0

    .line 312
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishAssisted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_52
    return-void

    .line 307
    :cond_53
    const/4 v0, 0x0

    move v1, v0

    :goto_55
    :try_start_55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 308
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    const/4 v6, 0x1

    invoke-static {v5, v0, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    .line 310
    :cond_79
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->showPending()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_7c} :catch_39

    goto :goto_52
.end method

.method static freshHr(J)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 444
    const-wide/16 v2, 0x1f40

    :try_start_3
    invoke-static {p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12

    move-result v0

    .line 447
    :cond_11
    :goto_11
    return v0

    .line 446
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static musicOn()Z
    .registers 1

    .prologue
    .line 466
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 468
    :goto_4
    return v0

    .line 467
    :catch_5
    move-exception v0

    .line 468
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V
    .registers 4

    .prologue
    .line 388
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 389
    if-nez v0, :cond_5

    .line 397
    :cond_4
    :goto_4
    return-void

    .line 392
    :cond_5
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    .line 393
    invoke-static {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/SessionStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 394
    if-eqz p1, :cond_4

    .line 395
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_4
.end method

.method private static show(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    .line 376
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2e

    .line 378
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_14} :catch_15

    .line 385
    :goto_14
    return-void

    .line 381
    :catch_15
    move-exception v0

    .line 382
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_14
.end method

.method private static showPending()V
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 368
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 367
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 370
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 371
    return-void
.end method

.method static tick()V
    .registers 26

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_ca

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    .line 87
    :goto_f
    invoke-static/range {v16 .. v17}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v12

    .line 88
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->aiPhase()I

    move-result v13

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->assistActive()Z

    move-result v15

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->autoProgram()Ljava/lang/String;

    move-result-object v18

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->currentExercise()I

    move-result v7

    .line 93
    if-lez v13, :cond_ce

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentExercise()I

    move-result v2

    move v6, v2

    .line 95
    :goto_2a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->musicOn()Z

    move-result v19

    .line 96
    const/4 v3, 0x0

    .line 97
    if-eqz v5, :cond_440

    .line 98
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_34
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_441

    .line 99
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 100
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 101
    if-eqz v2, :cond_da

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_da

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_da

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_da

    const/4 v4, 0x1

    move v10, v4

    .line 102
    :goto_60
    sget-object v4, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 103
    if-eqz v4, :cond_89

    if-eqz v10, :cond_80

    iget-object v11, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v11, v11, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v11, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v20, v0

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-eqz v4, :cond_89

    .line 104
    :cond_80
    sget-object v4, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_89
    if-eqz v3, :cond_502

    if-eqz v10, :cond_9d

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-eqz v4, :cond_502

    .line 107
    :cond_9d
    const/4 v4, 0x0

    move-wide/from16 v0, v16

    invoke-static {v8, v3, v0, v1, v4}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 108
    const/4 v3, 0x0

    move-object v11, v3

    .line 111
    :goto_a5
    if-eqz v11, :cond_c1

    iget-boolean v3, v11, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v3, :cond_c1

    if-eqz v10, :cond_c1

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_c1

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c1

    .line 112
    const/4 v3, 0x0

    move-wide/from16 v0, v16

    invoke-static {v8, v11, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 113
    const/4 v11, 0x0

    .line 115
    :cond_c1
    if-nez v10, :cond_dd

    move v3, v9

    .line 98
    :goto_c4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto/16 :goto_34

    .line 86
    :cond_ca
    const/4 v2, 0x0

    move-object v5, v2

    goto/16 :goto_f

    .line 94
    :cond_ce
    if-ltz v7, :cond_d3

    move v6, v7

    goto/16 :goto_2a

    :cond_d3
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->currentExercise()I

    move-result v2

    move v6, v2

    goto/16 :goto_2a

    .line 101
    :cond_da
    const/4 v4, 0x0

    move v10, v4

    goto :goto_60

    .line 118
    :cond_dd
    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    move/from16 v20, v0

    .line 119
    if-nez v11, :cond_e9

    if-nez v20, :cond_e9

    move v3, v9

    .line 120
    goto :goto_c4

    .line 122
    :cond_e9
    const/4 v3, 0x0

    .line 123
    if-eqz v20, :cond_4fe

    if-nez v9, :cond_4fe

    .line 124
    const/4 v9, 0x1

    .line 125
    const/4 v3, 0x1

    move v14, v3

    move v10, v9

    .line 127
    :goto_f2
    if-nez v11, :cond_26f

    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/SessionRec;

    move-object v4, v3

    .line 128
    :goto_101
    if-eqz v4, :cond_272

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v24, v0

    cmp-long v3, v22, v24

    if-nez v3, :cond_272

    .line 130
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/wearable/SessionRec;->resume(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 132
    iput-boolean v14, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 133
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v3, 0x0

    .line 136
    :try_start_127
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v9

    invoke-virtual {v9}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v9

    iget v3, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_127 .. :try_end_131} :catch_4f8

    .line 139
    :goto_131
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 140
    const-string v3, "report"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "session continues slot "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " user "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " plan +"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 157
    :goto_16f
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->takeStage(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v4

    .line 158
    if-eqz v4, :cond_228

    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    if-ltz v9, :cond_228

    .line 159
    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    .line 160
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v11

    .line 161
    const/4 v14, 0x0

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    move/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v4, v22

    sub-int v21, v21, v22

    const/16 v22, 0x1

    aget v22, v4, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 162
    const/4 v14, 0x0

    const/16 v21, 0x1

    aget v21, v4, v21

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 163
    iget v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v14, :cond_1c0

    iget v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ne v9, v14, :cond_1c0

    .line 164
    const/4 v14, 0x0

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    move/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v4, v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 166
    :cond_1c0
    iget v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v14, :cond_1d6

    iget v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ne v11, v14, :cond_1d6

    iget v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-eq v9, v14, :cond_1d6

    .line 167
    iget v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    const/16 v21, 0x1

    aget v21, v4, v21

    add-int v14, v14, v21

    iput v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 169
    :cond_1d6
    const-string v14, "report"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "slot "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mode "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v21, " \u2192 "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", -"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x0

    aget v11, v4, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " s, +"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    aget v4, v4, v11

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " s"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_228
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->takePlanDelta(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v4

    .line 174
    if-eqz v4, :cond_256

    .line 175
    const/4 v9, 0x0

    iget v11, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v11, v4

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 176
    const/4 v9, 0x0

    iget v11, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    add-int/2addr v11, v4

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 177
    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v9, :cond_256

    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    iget v11, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ne v9, v11, :cond_256

    .line 178
    const/4 v9, 0x0

    iget v11, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    add-int/2addr v4, v11

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 181
    :cond_256
    if-nez v20, :cond_390

    .line 182
    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v4, :cond_2d1

    .line 184
    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    const/16 v4, 0x708

    if-le v2, v4, :cond_436

    .line 185
    const/4 v2, 0x0

    move-wide/from16 v0, v16

    invoke-static {v8, v3, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v10

    goto/16 :goto_c4

    .line 127
    :cond_26f
    const/4 v4, 0x0

    goto/16 :goto_101

    .line 142
    :cond_272
    if-nez v11, :cond_4fb

    .line 143
    new-instance v4, Lcom/isaigu/gymapp/wearable/SessionRec;

    move-wide/from16 v0, v16

    invoke-direct {v4, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/SessionRec;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V

    .line 144
    iput-boolean v14, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 145
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v3, 0x0

    .line 148
    :try_start_287
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v9

    invoke-virtual {v9}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v9

    iget v3, v9, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_291
    .catch Ljava/lang/Throwable; {:try_start_287 .. :try_end_291} :catch_4f5

    .line 151
    :goto_291
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 152
    const-string v3, "report"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "session start slot "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " user "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " plan "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_16f

    .line 190
    :cond_2d1
    iget v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-lez v4, :cond_2df

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lez v4, :cond_30c

    iget v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lt v4, v9, :cond_30c

    :cond_2df
    const/4 v4, 0x1

    move v9, v4

    .line 191
    :goto_2e1
    if-eqz v9, :cond_30f

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    add-int/lit8 v4, v4, 0x1

    :goto_2e7
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 192
    if-eqz v9, :cond_311

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    :goto_2ed
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 193
    if-eqz v9, :cond_381

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    const/4 v9, 0x2

    if-lt v4, v9, :cond_381

    .line 194
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-nez v2, :cond_303

    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_303

    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    if-gez v2, :cond_316

    .line 195
    :cond_303
    const/4 v2, 0x1

    move-wide/from16 v0, v16

    invoke-static {v8, v3, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v10

    goto/16 :goto_c4

    .line 190
    :cond_30c
    const/4 v4, 0x0

    move v9, v4

    goto :goto_2e1

    .line 191
    :cond_30f
    const/4 v4, 0x0

    goto :goto_2e7

    .line 192
    :cond_311
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2ed

    .line 200
    :cond_316
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 201
    const/4 v2, 0x0

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    .line 202
    const/4 v2, 0x0

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 203
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 204
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_32b

    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_33c

    .line 205
    :cond_32b
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->deltLevel()I

    move-result v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v9

    iget-boolean v11, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v4, v9, v11}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([IILjava/lang/String;Z)V

    .line 207
    :cond_33c
    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 208
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    const/16 v4, 0x3c

    if-lt v2, v4, :cond_354

    .line 209
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 210
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 211
    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 213
    :cond_354
    const-string v2, "report"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " mode "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ended; a massage may follow as phase 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 216
    goto/16 :goto_c4

    .line 218
    :cond_381
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    const/16 v9, 0x708

    if-le v4, v9, :cond_409

    .line 219
    const/4 v2, 0x0

    move-wide/from16 v0, v16

    invoke-static {v8, v3, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v10

    .line 220
    goto/16 :goto_c4

    .line 223
    :cond_390
    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v4, :cond_3d1

    .line 224
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 225
    const/4 v4, 0x0

    iget v9, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 226
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v4, v9

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 227
    const-string v4, "report"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slot "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " next mode, plan "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_3d1
    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 230
    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 231
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v4

    .line 232
    if-ltz v4, :cond_3f3

    .line 233
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    .line 234
    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    const/4 v11, 0x1

    shl-int/2addr v11, v4

    or-int/2addr v9, v11

    iput v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    .line 235
    iget v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-gez v9, :cond_3f3

    const/4 v9, 0x3

    if-eq v4, v9, :cond_3f3

    .line 236
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    .line 237
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 240
    :cond_3f3
    if-eqz v15, :cond_3f8

    .line 241
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    .line 243
    :cond_3f8
    if-eqz v18, :cond_401

    .line 244
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    .line 245
    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 247
    :cond_401
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->name()Ljava/lang/String;

    move-result-object v4

    .line 248
    if-eqz v4, :cond_409

    .line 249
    iput-object v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 252
    :cond_409
    if-lez v13, :cond_412

    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_412

    .line 253
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    .line 255
    :cond_412
    if-eqz v19, :cond_417

    .line 256
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    .line 258
    :cond_417
    move/from16 v0, v20

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 259
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    if-gtz v4, :cond_436

    .line 260
    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_439

    if-lez v12, :cond_439

    move v4, v12

    :goto_427
    iget-boolean v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v9, :cond_43b

    move v11, v13

    .line 261
    :goto_42c
    if-ltz v7, :cond_43e

    iget-boolean v9, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-nez v9, :cond_43e

    const/4 v9, -0x1

    .line 260
    :goto_433
    invoke-virtual {v3, v2, v4, v11, v9}, Lcom/isaigu/gymapp/wearable/SessionRec;->sample(Lcom/isaigu/gymapp/train/model/TrainItem;III)V

    :cond_436
    move v3, v10

    goto/16 :goto_c4

    :cond_439
    const/4 v4, 0x0

    goto :goto_427

    :cond_43b
    const/4 v9, 0x0

    move v11, v9

    goto :goto_42c

    :cond_43e
    move v9, v6

    .line 261
    goto :goto_433

    :cond_440
    move v9, v3

    .line 266
    :cond_441
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 267
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 268
    :cond_450
    :goto_450
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_478

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 270
    if-eqz v5, :cond_46e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_450

    .line 271
    :cond_46e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_450

    .line 274
    :cond_478
    const/4 v2, 0x0

    move v3, v2

    :goto_47a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4a0

    .line 275
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/SessionRec;

    const/4 v7, 0x0

    move-wide/from16 v0, v16

    invoke-static {v4, v2, v0, v1, v7}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 274
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_47a

    .line 277
    :cond_4a0
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->tick(Landroid/content/Context;Ljava/util/List;)V

    .line 278
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/TrainIndex;->tick(Ljava/util/List;)V

    .line 279
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/PartPick;->tick(Ljava/util/List;)V

    .line 280
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1, v5, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tick(Landroid/content/Context;JLjava/util/List;I)V

    .line 282
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_4c1
    if-ltz v4, :cond_4f4

    .line 283
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 284
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v12}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 285
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 286
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    if-lez v3, :cond_4dc

    if-eqz v9, :cond_4ee

    .line 287
    :cond_4dc
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    iget-boolean v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v3, :cond_4f2

    const/4 v3, 0x1

    :goto_4e6
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 289
    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 282
    :cond_4ee
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_4c1

    .line 288
    :cond_4f2
    const/4 v3, 0x0

    goto :goto_4e6

    .line 292
    :cond_4f4
    return-void

    .line 149
    :catch_4f5
    move-exception v9

    goto/16 :goto_291

    .line 137
    :catch_4f8
    move-exception v9

    goto/16 :goto_131

    :cond_4fb
    move-object v3, v11

    goto/16 :goto_16f

    :cond_4fe
    move v14, v3

    move v10, v9

    goto/16 :goto_f2

    :cond_502
    move-object v11, v3

    goto/16 :goto_a5
.end method

.method private static toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 400
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 402
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u043a\u043b\u0430\u0434\u044a\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043d\u0430 "

    const-string v3, "Training report saved to the profile of "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 402
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    :goto_29
    return-void

    .line 403
    :cond_2a
    const-string v0, ""
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 405
    :catch_2d
    move-exception v0

    goto :goto_29
.end method

.method private static useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 411
    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 413
    :cond_d
    :goto_d
    return v0

    .line 412
    :catch_e
    move-exception v1

    goto :goto_d
.end method
