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
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    return-object v0
.end method

.method private static aiPhase()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 399
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v2, :cond_a

    .line 405
    :cond_9
    :goto_9
    return v0

    .line 402
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 403
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

    .line 404
    :catch_2b
    move-exception v1

    goto :goto_9
.end method

.method private static assistActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 365
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    .line 366
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 367
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

    .line 370
    :cond_1a
    :goto_1a
    return v0

    .line 369
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private static autoProgram()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 377
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v1, v2, :cond_f

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    if-nez v1, :cond_10

    .line 383
    :cond_f
    :goto_f
    return-object v0

    .line 381
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_f

    .line 382
    :catch_1b
    move-exception v1

    goto :goto_f
.end method

.method private static boardUp()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 265
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 266
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 268
    :cond_12
    :goto_12
    return v0

    .line 267
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

    .line 273
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    if-nez p1, :cond_10

    .line 309
    :goto_f
    return-void

    .line 277
    :cond_10
    iput-wide p2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 278
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onEnd(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 279
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/NextClient;->onClosed(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    .line 280
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_20

    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_2d

    .line 281
    :cond_20
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([ILjava/lang/String;Z)V

    .line 283
    :cond_2d
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    if-ge v2, v6, :cond_5c

    .line 284
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

    .line 287
    :cond_5c
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->remember(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 288
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

    .line 290
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_c7

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v2

    if-lez v2, :cond_c7

    move v2, v0

    .line 291
    :goto_a8
    if-eqz p4, :cond_bc

    .line 293
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 294
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v3, :cond_c9

    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->boardUp()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 295
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_bc
    :goto_bc
    if-eqz v2, :cond_cd

    .line 301
    iput v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 302
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_c7
    move v2, v1

    .line 290
    goto :goto_a8

    .line 297
    :cond_c9
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_bc

    .line 304
    :cond_cd
    if-nez p4, :cond_d6

    .line 305
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v2, :cond_dd

    :goto_d3
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 307
    :cond_d6
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto/16 :goto_f

    :cond_dd
    move v0, v1

    .line 305
    goto :goto_d3
.end method

.method public static ensure(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 52
    if-nez p0, :cond_3

    .line 62
    :cond_2
    :goto_2
    return-void

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 56
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->started:Z

    if-nez v0, :cond_2

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->started:Z

    .line 60
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    const-string v0, "report"

    const-string v1, "session recorder on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static finishAssisted()V
    .registers 7

    .prologue
    .line 246
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 248
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

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/SessionRec;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v1, :cond_13

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_13

    .line 257
    :catch_39
    move-exception v0

    .line 258
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

    .line 260
    :goto_52
    return-void

    .line 253
    :cond_53
    const/4 v0, 0x0

    move v1, v0

    :goto_55
    :try_start_55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 254
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

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    .line 256
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

    .line 389
    const-wide/16 v2, 0x1f40

    :try_start_3
    invoke-static {p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12

    move-result v0

    .line 392
    :cond_11
    :goto_11
    return v0

    .line 391
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static musicOn()Z
    .registers 1

    .prologue
    .line 411
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 413
    :goto_4
    return v0

    .line 412
    :catch_5
    move-exception v0

    .line 413
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V
    .registers 4

    .prologue
    .line 333
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 334
    if-nez v0, :cond_5

    .line 342
    :cond_4
    :goto_4
    return-void

    .line 337
    :cond_5
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    .line 338
    invoke-static {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/SessionStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 339
    if-eqz p1, :cond_4

    .line 340
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_4
.end method

.method private static show(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    .line 321
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2e

    .line 323
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_14} :catch_15

    .line 330
    :goto_14
    return-void

    .line 326
    :catch_15
    move-exception v0

    .line 327
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

    .line 329
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_14
.end method

.method private static showPending()V
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 312
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 315
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    return-void
.end method

.method static tick()V
    .registers 20

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_92

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    .line 80
    :goto_f
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v7

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->aiPhase()I

    move-result v9

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->assistActive()Z

    move-result v11

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->autoProgram()Ljava/lang/String;

    move-result-object v14

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->musicOn()Z

    move-result v15

    .line 85
    const/4 v3, 0x0

    .line 86
    if-eqz v4, :cond_2c7

    .line 87
    const/4 v2, 0x0

    move v5, v2

    move v6, v3

    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_2c8

    .line 88
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 89
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 90
    if-eqz v2, :cond_96

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_96

    iget-object v8, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v8, :cond_96

    iget-object v8, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v8, :cond_96

    const/4 v8, 0x1

    .line 91
    :goto_54
    if-eqz v3, :cond_6d

    if-eqz v8, :cond_68

    iget-object v10, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v10, v10, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v10, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-wide/from16 v16, v0

    iget-wide v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v18, v0

    cmp-long v10, v16, v18

    if-eqz v10, :cond_6d

    .line 92
    :cond_68
    const/4 v10, 0x0

    invoke-static {v5, v3, v12, v13, v10}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 93
    const/4 v3, 0x0

    .line 96
    :cond_6d
    if-eqz v3, :cond_8a

    iget-boolean v10, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v10, :cond_8a

    if-eqz v8, :cond_8a

    iget-object v10, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v10, v10, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v10, :cond_8a

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v10

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v10, v0, :cond_8a

    .line 97
    const/4 v10, 0x0

    invoke-static {v5, v3, v12, v13, v10}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 98
    const/4 v3, 0x0

    .line 100
    :cond_8a
    if-nez v8, :cond_98

    move v3, v6

    .line 87
    :goto_8d
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v3

    goto :goto_29

    .line 79
    :cond_92
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_f

    .line 90
    :cond_96
    const/4 v8, 0x0

    goto :goto_54

    .line 103
    :cond_98
    iget-object v8, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v8, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    move/from16 v16, v0

    .line 104
    if-nez v3, :cond_a4

    if-nez v16, :cond_a4

    move v3, v6

    .line 105
    goto :goto_8d

    .line 107
    :cond_a4
    const/4 v8, 0x0

    .line 108
    if-eqz v16, :cond_375

    if-nez v6, :cond_375

    .line 109
    const/4 v10, 0x1

    .line 110
    const/4 v6, 0x1

    move v8, v6

    .line 112
    :goto_ac
    if-nez v3, :cond_113

    .line 113
    new-instance v6, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-direct {v6, v2, v12, v13}, Lcom/isaigu/gymapp/wearable/SessionRec;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V

    .line 114
    iput-boolean v8, v6, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 115
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v3, 0x0

    .line 118
    :try_start_bf
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    iget v3, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c9} :catch_372

    .line 121
    :goto_c9
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 122
    const-string v3, "report"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "session start slot "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " user "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " plan "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v6, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " s"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 126
    :cond_113
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->takePlanDelta(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v6

    .line 127
    if-eqz v6, :cond_152

    .line 128
    const/4 v8, 0x0

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 129
    const/4 v8, 0x0

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 130
    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v8, :cond_152

    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v8, v0, :cond_152

    .line 131
    const/4 v8, 0x0

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 134
    :cond_152
    if-nez v16, :cond_21e

    .line 135
    iget-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v6, :cond_169

    .line 137
    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    const/16 v6, 0x708

    if-le v2, v6, :cond_2c0

    .line 138
    const/4 v2, 0x0

    invoke-static {v5, v3, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v10

    goto/16 :goto_8d

    .line 143
    :cond_169
    iget v6, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-lez v6, :cond_177

    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lez v6, :cond_1a2

    iget v6, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lt v6, v8, :cond_1a2

    :cond_177
    const/4 v6, 0x1

    move v8, v6

    .line 144
    :goto_179
    if-eqz v8, :cond_1a5

    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    add-int/lit8 v6, v6, 0x1

    :goto_17f
    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 145
    if-eqz v8, :cond_1a7

    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    :goto_185
    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 146
    if-eqz v8, :cond_211

    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    const/4 v8, 0x2

    if-lt v6, v8, :cond_211

    .line 147
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-nez v2, :cond_19b

    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_19b

    iget v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    if-gez v2, :cond_1ac

    .line 148
    :cond_19b
    const/4 v2, 0x1

    invoke-static {v5, v3, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v10

    goto/16 :goto_8d

    .line 143
    :cond_1a2
    const/4 v6, 0x0

    move v8, v6

    goto :goto_179

    .line 144
    :cond_1a5
    const/4 v6, 0x0

    goto :goto_17f

    .line 145
    :cond_1a7
    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_185

    .line 153
    :cond_1ac
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 154
    const/4 v2, 0x0

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    .line 155
    const/4 v2, 0x0

    iput v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 156
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 157
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_1c1

    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_1ce

    .line 158
    :cond_1c1
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v6, v8}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([ILjava/lang/String;Z)V

    .line 160
    :cond_1ce
    iput-wide v12, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 161
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v2

    const/16 v6, 0x3c

    if-lt v2, v6, :cond_1e4

    .line 162
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 163
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 164
    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 166
    :cond_1e4
    const-string v2, "report"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v3, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ended; a massage may follow as phase 2"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 169
    goto/16 :goto_8d

    .line 171
    :cond_211
    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    const/16 v8, 0x708

    if-le v6, v8, :cond_29a

    .line 172
    const/4 v2, 0x0

    invoke-static {v5, v3, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v10

    .line 173
    goto/16 :goto_8d

    .line 176
    :cond_21e
    iget-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v6, :cond_269

    .line 177
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 178
    const/4 v6, 0x0

    iget v8, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 179
    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v6, v8

    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 180
    const-string v6, "report"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "slot "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " next mode, plan "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " s"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_269
    const/4 v6, 0x0

    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 183
    const/4 v6, 0x0

    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 184
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v6

    .line 185
    if-ltz v6, :cond_28e

    .line 186
    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    .line 187
    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    const/16 v17, 0x1

    shl-int v17, v17, v6

    or-int v8, v8, v17

    iput v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    .line 188
    iget v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-gez v8, :cond_28e

    const/4 v8, 0x3

    if-eq v6, v8, :cond_28e

    .line 189
    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    .line 190
    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    iput v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 193
    :cond_28e
    if-eqz v11, :cond_293

    .line 194
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    .line 196
    :cond_293
    if-eqz v14, :cond_29a

    .line 197
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    .line 198
    iput-object v14, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 201
    :cond_29a
    if-lez v9, :cond_2a3

    iget-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v6, :cond_2a3

    .line 202
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    .line 204
    :cond_2a3
    if-eqz v15, :cond_2a8

    .line 205
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    .line 207
    :cond_2a8
    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 208
    iget v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    if-gtz v6, :cond_2c0

    .line 209
    iget-boolean v6, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v6, :cond_2c3

    if-lez v7, :cond_2c3

    move v6, v7

    :goto_2b8
    iget-boolean v8, v3, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v8, :cond_2c5

    move v8, v9

    :goto_2bd
    invoke-virtual {v3, v2, v6, v8}, Lcom/isaigu/gymapp/wearable/SessionRec;->sample(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    :cond_2c0
    move v3, v10

    goto/16 :goto_8d

    :cond_2c3
    const/4 v6, 0x0

    goto :goto_2b8

    :cond_2c5
    const/4 v8, 0x0

    goto :goto_2bd

    :cond_2c7
    move v6, v3

    .line 214
    :cond_2c8
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 215
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :cond_2d7
    :goto_2d7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    if-eqz v4, :cond_2f5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lt v3, v9, :cond_2d7

    .line 219
    :cond_2f5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d7

    .line 222
    :cond_2ff
    const/4 v2, 0x0

    move v3, v2

    :goto_301
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_325

    .line 223
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/SessionRec;

    const/4 v9, 0x0

    invoke-static {v5, v2, v12, v13, v9}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    .line 222
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_301

    .line 225
    :cond_325
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->tick(Landroid/content/Context;Ljava/util/List;)V

    .line 226
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v2, v12, v13, v4, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tick(Landroid/content/Context;JLjava/util/List;I)V

    .line 228
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_33e
    if-ltz v4, :cond_371

    .line 229
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 230
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v7}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 231
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 232
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    if-lez v3, :cond_359

    if-eqz v6, :cond_36b

    .line 233
    :cond_359
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    iget-boolean v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v3, :cond_36f

    const/4 v3, 0x1

    :goto_363
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 235
    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 228
    :cond_36b
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_33e

    .line 234
    :cond_36f
    const/4 v3, 0x0

    goto :goto_363

    .line 238
    :cond_371
    return-void

    .line 119
    :catch_372
    move-exception v8

    goto/16 :goto_c9

    :cond_375
    move v10, v6

    goto/16 :goto_ac
.end method

.method private static toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 345
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 347
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u043a\u043b\u0430\u0434\u044a\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043d\u0430 "

    const-string v3, "Training report saved to the profile of "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 347
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    :goto_29
    return-void

    .line 348
    :cond_2a
    const-string v0, ""
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 350
    :catch_2d
    move-exception v0

    goto :goto_29
.end method

.method private static useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 356
    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 358
    :cond_d
    :goto_d
    return v0

    .line 357
    :catch_e
    move-exception v1

    goto :goto_d
.end method
