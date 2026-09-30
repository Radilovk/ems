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

    .line 434
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v2, :cond_a

    .line 440
    :cond_9
    :goto_9
    return v0

    .line 437
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 438
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

    .line 439
    :catch_2b
    move-exception v1

    goto :goto_9
.end method

.method private static assistActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 400
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 402
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

    .line 405
    :cond_1a
    :goto_1a
    return v0

    .line 404
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private static autoProgram()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 412
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v1, v2, :cond_f

    .line 413
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    if-nez v1, :cond_10

    .line 418
    :cond_f
    :goto_f
    return-object v0

    .line 416
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_f

    .line 417
    :catch_1b
    move-exception v1

    goto :goto_f
.end method

.method private static boardUp()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 299
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 302
    :cond_12
    :goto_12
    return v0

    .line 301
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

    .line 307
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    if-nez p1, :cond_10

    .line 344
    :goto_f
    return-void

    .line 311
    :cond_10
    iput-wide p2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 312
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onEnd(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 313
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/NextClient;->onClosed(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    .line 314
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_20

    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_2d

    .line 315
    :cond_20
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([ILjava/lang/String;Z)V

    .line 317
    :cond_2d
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    if-ge v2, v6, :cond_5c

    .line 318
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

    .line 321
    :cond_5c
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->remember(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 322
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
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

    .line 325
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_d0

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v2

    if-lez v2, :cond_d0

    move v2, v0

    .line 326
    :goto_b1
    if-eqz p4, :cond_c5

    .line 328
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 329
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v3, :cond_d2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->boardUp()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 330
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_c5
    :goto_c5
    if-eqz v2, :cond_d6

    .line 336
    iput v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 337
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_d0
    move v2, v1

    .line 325
    goto :goto_b1

    .line 332
    :cond_d2
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_c5

    .line 339
    :cond_d6
    if-nez p4, :cond_df

    .line 340
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v2, :cond_e6

    :goto_dc
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 342
    :cond_df
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto/16 :goto_f

    :cond_e6
    move v0, v1

    .line 340
    goto :goto_dc
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
    .line 280
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
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

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/SessionRec;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v1, :cond_13

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_13

    .line 291
    :catch_39
    move-exception v0

    .line 292
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

    .line 294
    :goto_52
    return-void

    .line 287
    :cond_53
    const/4 v0, 0x0

    move v1, v0

    :goto_55
    :try_start_55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 288
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

    .line 287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    .line 290
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

    .line 424
    const-wide/16 v2, 0x1f40

    :try_start_3
    invoke-static {p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12

    move-result v0

    .line 427
    :cond_11
    :goto_11
    return v0

    .line 426
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static musicOn()Z
    .registers 1

    .prologue
    .line 446
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 448
    :goto_4
    return v0

    .line 447
    :catch_5
    move-exception v0

    .line 448
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V
    .registers 4

    .prologue
    .line 368
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 369
    if-nez v0, :cond_5

    .line 377
    :cond_4
    :goto_4
    return-void

    .line 372
    :cond_5
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    .line 373
    invoke-static {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/SessionStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 374
    if-eqz p1, :cond_4

    .line 375
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_4
.end method

.method private static show(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    .line 356
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2e

    .line 358
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_14} :catch_15

    .line 365
    :goto_14
    return-void

    .line 361
    :catch_15
    move-exception v0

    .line 362
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

    .line 364
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_14
.end method

.method private static showPending()V
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 348
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 347
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 350
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    return-void
.end method

.method static tick()V
    .registers 24

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    .line 87
    :goto_f
    invoke-static {v14, v15}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v11

    .line 88
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->aiPhase()I

    move-result v12

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->assistActive()Z

    move-result v16

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->autoProgram()Ljava/lang/String;

    move-result-object v17

    .line 92
    if-lez v12, :cond_c6

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->currentExercise()I

    move-result v2

    move v6, v2

    .line 94
    :goto_26
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->musicOn()Z

    move-result v18

    .line 95
    const/4 v3, 0x0

    .line 96
    if-eqz v5, :cond_362

    .line 97
    const/4 v2, 0x0

    move v7, v2

    move v8, v3

    :goto_30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_363

    .line 98
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 99
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 100
    if-eqz v2, :cond_cd

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cd

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_cd

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_cd

    const/4 v4, 0x1

    move v9, v4

    .line 101
    :goto_5c
    sget-object v4, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 102
    if-eqz v4, :cond_85

    if-eqz v9, :cond_7c

    iget-object v10, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v10, v10, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v10, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v20, v0

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-eqz v4, :cond_85

    .line 103
    :cond_7c
    sget-object v4, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_85
    if-eqz v3, :cond_41d

    if-eqz v9, :cond_99

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v22, v0

    cmp-long v4, v20, v22

    if-eqz v4, :cond_41d

    .line 106
    :cond_99
    const/4 v4, 0x0

    invoke-static {v7, v3, v14, v15, v4}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 107
    const/4 v3, 0x0

    move-object v10, v3

    .line 110
    :goto_9f
    if-eqz v10, :cond_b9

    iget-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v3, :cond_b9

    if-eqz v9, :cond_b9

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_b9

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b9

    .line 111
    const/4 v3, 0x0

    invoke-static {v7, v10, v14, v15, v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 112
    const/4 v10, 0x0

    .line 114
    :cond_b9
    if-nez v9, :cond_d0

    move v3, v8

    .line 97
    :goto_bc
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    goto/16 :goto_30

    .line 86
    :cond_c2
    const/4 v2, 0x0

    move-object v5, v2

    goto/16 :goto_f

    .line 93
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->currentExercise()I

    move-result v2

    move v6, v2

    goto/16 :goto_26

    .line 100
    :cond_cd
    const/4 v4, 0x0

    move v9, v4

    goto :goto_5c

    .line 117
    :cond_d0
    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    move/from16 v19, v0

    .line 118
    if-nez v10, :cond_dc

    if-nez v19, :cond_dc

    move v3, v8

    .line 119
    goto :goto_bc

    .line 121
    :cond_dc
    const/4 v3, 0x0

    .line 122
    if-eqz v19, :cond_419

    if-nez v8, :cond_419

    .line 123
    const/4 v8, 0x1

    .line 124
    const/4 v3, 0x1

    move v13, v3

    move v9, v8

    .line 126
    :goto_e5
    if-nez v10, :cond_1a7

    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->LAST:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/SessionRec;

    move-object v4, v3

    .line 127
    :goto_f4
    if-eqz v4, :cond_1aa

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v20, v0

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v22, v0

    cmp-long v3, v20, v22

    if-nez v3, :cond_1aa

    .line 129
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/wearable/SessionRec;->resume(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 131
    iput-boolean v13, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 132
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v3, 0x0

    .line 135
    :try_start_11a
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    iget v3, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_124} :catch_413

    .line 138
    :goto_124
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 139
    const-string v3, "report"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "session continues slot "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " user "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " plan +"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " s"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 155
    :goto_162
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->takePlanDelta(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v4

    .line 156
    if-eqz v4, :cond_190

    .line 157
    const/4 v8, 0x0

    iget v10, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v10, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 158
    const/4 v8, 0x0

    iget v10, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    add-int/2addr v10, v4

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 159
    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v8, :cond_190

    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    iget v10, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ne v8, v10, :cond_190

    .line 160
    const/4 v8, 0x0

    iget v10, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    add-int/2addr v4, v10

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 163
    :cond_190
    if-nez v19, :cond_2bc

    .line 164
    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v4, :cond_207

    .line 166
    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    const/16 v4, 0x708

    if-le v2, v4, :cond_35b

    .line 167
    const/4 v2, 0x0

    invoke-static {v7, v3, v14, v15, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    goto/16 :goto_bc

    .line 126
    :cond_1a7
    const/4 v4, 0x0

    goto/16 :goto_f4

    .line 141
    :cond_1aa
    if-nez v10, :cond_416

    .line 142
    new-instance v4, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-direct {v4, v2, v14, v15}, Lcom/isaigu/gymapp/wearable/SessionRec;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V

    .line 143
    iput-boolean v13, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 144
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v3, 0x0

    .line 147
    :try_start_1bd
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    iget v3, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_1c7
    .catch Ljava/lang/Throwable; {:try_start_1bd .. :try_end_1c7} :catch_410

    .line 150
    :goto_1c7
    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 151
    const-string v3, "report"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "session start slot "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " user "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " plan "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " s"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_162

    .line 172
    :cond_207
    iget v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-lez v4, :cond_215

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lez v4, :cond_240

    iget v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lt v4, v8, :cond_240

    :cond_215
    const/4 v4, 0x1

    move v8, v4

    .line 173
    :goto_217
    if-eqz v8, :cond_243

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    add-int/lit8 v4, v4, 0x1

    :goto_21d
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 174
    if-eqz v8, :cond_245

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    :goto_223
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 175
    if-eqz v8, :cond_2af

    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    const/4 v8, 0x2

    if-lt v4, v8, :cond_2af

    .line 176
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-nez v2, :cond_239

    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_239

    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    if-gez v2, :cond_24a

    .line 177
    :cond_239
    const/4 v2, 0x1

    invoke-static {v7, v3, v14, v15, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    goto/16 :goto_bc

    .line 172
    :cond_240
    const/4 v4, 0x0

    move v8, v4

    goto :goto_217

    .line 173
    :cond_243
    const/4 v4, 0x0

    goto :goto_21d

    .line 174
    :cond_245
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_223

    .line 182
    :cond_24a
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 183
    const/4 v2, 0x0

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    .line 184
    const/4 v2, 0x0

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 185
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 186
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_25f

    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_26c

    .line 187
    :cond_25f
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v4

    iget-boolean v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v4, v8}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([ILjava/lang/String;Z)V

    .line 189
    :cond_26c
    iput-wide v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 190
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    const/16 v4, 0x3c

    if-lt v2, v4, :cond_282

    .line 191
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 192
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 193
    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 195
    :cond_282
    const-string v2, "report"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " mode "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move v3, v9

    .line 198
    goto/16 :goto_bc

    .line 200
    :cond_2af
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    const/16 v8, 0x708

    if-le v4, v8, :cond_335

    .line 201
    const/4 v2, 0x0

    invoke-static {v7, v3, v14, v15, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    .line 202
    goto/16 :goto_bc

    .line 205
    :cond_2bc
    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v4, :cond_2fd

    .line 206
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 207
    const/4 v4, 0x0

    iget v8, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 208
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v4, v8

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 209
    const-string v4, "report"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " next mode, plan "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " s"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_2fd
    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 212
    const/4 v4, 0x0

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 213
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v4

    .line 214
    if-ltz v4, :cond_31f

    .line 215
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    .line 216
    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    const/4 v10, 0x1

    shl-int/2addr v10, v4

    or-int/2addr v8, v10

    iput v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    .line 217
    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-gez v8, :cond_31f

    const/4 v8, 0x3

    if-eq v4, v8, :cond_31f

    .line 218
    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    .line 219
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    iput v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 222
    :cond_31f
    if-eqz v16, :cond_324

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    .line 225
    :cond_324
    if-eqz v17, :cond_32d

    .line 226
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    .line 227
    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 229
    :cond_32d
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->name()Ljava/lang/String;

    move-result-object v4

    .line 230
    if-eqz v4, :cond_335

    .line 231
    iput-object v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 234
    :cond_335
    if-lez v12, :cond_33e

    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_33e

    .line 235
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    .line 237
    :cond_33e
    if-eqz v18, :cond_343

    .line 238
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    .line 240
    :cond_343
    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 241
    iget v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    if-gtz v4, :cond_35b

    .line 242
    iget-boolean v4, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_35e

    if-lez v11, :cond_35e

    move v4, v11

    :goto_353
    iget-boolean v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v8, :cond_360

    move v8, v12

    :goto_358
    invoke-virtual {v3, v2, v4, v8, v6}, Lcom/isaigu/gymapp/wearable/SessionRec;->sample(Lcom/isaigu/gymapp/train/model/TrainItem;III)V

    :cond_35b
    move v3, v9

    goto/16 :goto_bc

    :cond_35e
    const/4 v4, 0x0

    goto :goto_353

    :cond_360
    const/4 v8, 0x0

    goto :goto_358

    :cond_362
    move v8, v3

    .line 247
    :cond_363
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 248
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    :cond_372
    :goto_372
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39a

    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 251
    if-eqz v5, :cond_390

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_372

    .line 252
    :cond_390
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_372

    .line 255
    :cond_39a
    const/4 v2, 0x0

    move v3, v2

    :goto_39c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3c0

    .line 256
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

    invoke-static {v4, v2, v14, v15, v7}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 255
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_39c

    .line 258
    :cond_3c0
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->tick(Landroid/content/Context;Ljava/util/List;)V

    .line 259
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/TrainIndex;->tick(Ljava/util/List;)V

    .line 260
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v2, v14, v15, v5, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tick(Landroid/content/Context;JLjava/util/List;I)V

    .line 262
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_3dc
    if-ltz v4, :cond_40f

    .line 263
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 264
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 265
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 266
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    if-lez v3, :cond_3f7

    if-eqz v8, :cond_409

    .line 267
    :cond_3f7
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    iget-boolean v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v3, :cond_40d

    const/4 v3, 0x1

    :goto_401
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 269
    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 262
    :cond_409
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_3dc

    .line 268
    :cond_40d
    const/4 v3, 0x0

    goto :goto_401

    .line 272
    :cond_40f
    return-void

    .line 148
    :catch_410
    move-exception v8

    goto/16 :goto_1c7

    .line 136
    :catch_413
    move-exception v8

    goto/16 :goto_124

    :cond_416
    move-object v3, v10

    goto/16 :goto_162

    :cond_419
    move v13, v3

    move v9, v8

    goto/16 :goto_e5

    :cond_41d
    move-object v10, v3

    goto/16 :goto_9f
.end method

.method private static toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 380
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 382
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u043a\u043b\u0430\u0434\u044a\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043d\u0430 "

    const-string v3, "Training report saved to the profile of "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 382
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    :goto_29
    return-void

    .line 383
    :cond_2a
    const-string v0, ""
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 385
    :catch_2d
    move-exception v0

    goto :goto_29
.end method

.method private static useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 391
    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 393
    :cond_d
    :goto_d
    return v0

    .line 392
    :catch_e
    move-exception v1

    goto :goto_d
.end method
