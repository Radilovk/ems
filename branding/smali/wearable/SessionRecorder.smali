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

    .line 375
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v2, :cond_a

    .line 381
    :cond_9
    :goto_9
    return v0

    .line 378
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 379
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

    .line 380
    :catch_2b
    move-exception v1

    goto :goto_9
.end method

.method private static assistActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 341
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    .line 342
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    .line 343
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

    .line 346
    :cond_1a
    :goto_1a
    return v0

    .line 345
    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method private static autoProgram()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 353
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v1, v2, :cond_f

    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    if-nez v1, :cond_10

    .line 359
    :cond_f
    :goto_f
    return-object v0

    .line 357
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_f

    .line 358
    :catch_1b
    move-exception v1

    goto :goto_f
.end method

.method private static boardUp()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 244
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 247
    :cond_12
    :goto_12
    return v0

    .line 246
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method private static close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V
    .registers 13

    .prologue
    const/16 v6, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    if-nez p1, :cond_10

    .line 285
    :cond_f
    :goto_f
    return-void

    .line 256
    :cond_10
    iput-wide p2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 257
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onEnd(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 258
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/NextClient;->onClosed(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    .line 259
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v0, :cond_20

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v0, :cond_2d

    .line 260
    :cond_20
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([ILjava/lang/String;Z)V

    .line 262
    :cond_2d
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v0

    if-ge v0, v6, :cond_5c

    .line 263
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

    .line 266
    :cond_5c
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->remember(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 267
    const-string v0, "report"

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

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v0, :cond_c7

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v0

    if-lez v0, :cond_c7

    move v0, v1

    .line 270
    :goto_a8
    if-eqz p4, :cond_bc

    .line 272
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 273
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v2, :cond_c9

    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->boardUp()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 274
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_bc
    :goto_bc
    if-eqz v0, :cond_cd

    .line 280
    iput v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 281
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_c7
    move v0, v2

    .line 269
    goto :goto_a8

    .line 276
    :cond_c9
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_bc

    .line 282
    :cond_cd
    if-nez p4, :cond_f

    .line 283
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    goto/16 :goto_f
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
    .line 225
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 227
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

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/SessionRec;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v1, :cond_13

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_13

    .line 236
    :catch_39
    move-exception v0

    .line 237
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

    .line 239
    :goto_52
    return-void

    .line 232
    :cond_53
    const/4 v0, 0x0

    move v1, v0

    :goto_55
    :try_start_55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 233
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

    .line 232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    .line 235
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

    .line 365
    const-wide/16 v2, 0x1f40

    :try_start_3
    invoke-static {p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12

    move-result v0

    .line 368
    :cond_11
    :goto_11
    return v0

    .line 367
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static musicOn()Z
    .registers 1

    .prologue
    .line 387
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 389
    :goto_4
    return v0

    .line 388
    :catch_5
    move-exception v0

    .line 389
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V
    .registers 4

    .prologue
    .line 309
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 310
    if-nez v0, :cond_5

    .line 318
    :cond_4
    :goto_4
    return-void

    .line 313
    :cond_5
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v1

    .line 314
    invoke-static {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/SessionStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 315
    if-eqz p1, :cond_4

    .line 316
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_4
.end method

.method private static show(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    .line 297
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2e

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ReportScreen;->open(Landroid/app/Activity;Ljava/lang/Object;J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_14} :catch_15

    .line 306
    :goto_14
    return-void

    .line 302
    :catch_15
    move-exception v0

    .line 303
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

    .line 305
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_14
.end method

.method private static showPending()V
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 289
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->show(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 291
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->PENDING:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
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
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    .line 80
    :goto_f
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v7

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->aiPhase()I

    move-result v8

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
    if-eqz v4, :cond_25b

    .line 87
    const/4 v2, 0x0

    move v5, v2

    move v6, v3

    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_25c

    .line 88
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 89
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 90
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_78

    iget-object v9, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v9, :cond_78

    iget-object v9, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v9, :cond_78

    const/4 v9, 0x1

    .line 91
    :goto_54
    if-eqz v3, :cond_6d

    if-eqz v9, :cond_68

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

    .line 95
    :cond_6d
    if-nez v9, :cond_7a

    move v3, v6

    .line 87
    :goto_70
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v3

    goto :goto_29

    .line 79
    :cond_75
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_f

    .line 90
    :cond_78
    const/4 v9, 0x0

    goto :goto_54

    .line 98
    :cond_7a
    iget-object v9, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v9, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    move/from16 v16, v0

    .line 99
    if-nez v3, :cond_86

    if-nez v16, :cond_86

    move v3, v6

    .line 100
    goto :goto_70

    .line 102
    :cond_86
    const/4 v10, 0x0

    .line 103
    if-eqz v16, :cond_307

    if-nez v6, :cond_307

    .line 104
    const/4 v9, 0x1

    .line 105
    const/4 v6, 0x1

    move v10, v6

    .line 107
    :goto_8e
    if-nez v3, :cond_304

    .line 108
    new-instance v6, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-direct {v6, v2, v12, v13}, Lcom/isaigu/gymapp/wearable/SessionRec;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V

    .line 109
    iput-boolean v10, v6, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 110
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v3, 0x0

    .line 113
    :try_start_a1
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v10

    invoke-virtual {v10}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v10

    iget v3, v10, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_ab} :catch_301

    .line 116
    :goto_ab
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 117
    const-string v3, "report"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "session start slot "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v17, " user "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v17, " plan "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v0, v6, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v17, " s"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v6

    .line 120
    :goto_f5
    if-nez v16, :cond_1b2

    .line 121
    iget-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v3, :cond_10c

    .line 123
    iget v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    const/16 v3, 0x708

    if-le v2, v3, :cond_254

    .line 124
    const/4 v2, 0x0

    invoke-static {v5, v10, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    goto/16 :goto_70

    .line 129
    :cond_10c
    iget v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-lez v3, :cond_11a

    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lez v3, :cond_13c

    iget v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    if-lt v3, v6, :cond_13c

    :cond_11a
    const/4 v3, 0x1

    move v6, v3

    .line 130
    :goto_11c
    if-eqz v6, :cond_13f

    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    add-int/lit8 v3, v3, 0x1

    :goto_122
    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 131
    if-eqz v6, :cond_141

    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    :goto_128
    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 132
    if-eqz v6, :cond_1a5

    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    const/4 v6, 0x2

    if-lt v3, v6, :cond_1a5

    .line 133
    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-eqz v2, :cond_146

    .line 134
    const/4 v2, 0x1

    invoke-static {v5, v10, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    goto/16 :goto_70

    .line 129
    :cond_13c
    const/4 v3, 0x0

    move v6, v3

    goto :goto_11c

    .line 130
    :cond_13f
    const/4 v3, 0x0

    goto :goto_122

    .line 131
    :cond_141
    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 135
    :cond_146
    iget v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14f

    iget v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    if-gez v2, :cond_156

    .line 136
    :cond_14f
    const/4 v2, 0x1

    invoke-static {v5, v10, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    goto/16 :goto_70

    .line 138
    :cond_156
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 139
    const/4 v2, 0x0

    iput v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    .line 140
    const/4 v2, 0x0

    iput v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 141
    const/4 v2, 0x0

    invoke-static {v10, v2}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 144
    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v2, :cond_16b

    iget-boolean v2, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v2, :cond_178

    .line 145
    :cond_16b
    invoke-virtual {v10}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v2

    invoke-virtual {v10}, Lcom/isaigu/gymapp/wearable/SessionRec;->sex()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-static {v2, v3, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->onMuscles([ILjava/lang/String;Z)V

    .line 147
    :cond_178
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mode "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " done, waiting"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v9

    .line 149
    goto/16 :goto_70

    .line 151
    :cond_1a5
    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    const/16 v6, 0x708

    if-le v3, v6, :cond_22e

    .line 152
    const/4 v2, 0x0

    invoke-static {v5, v10, v12, v13, v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;JZ)V

    move v3, v9

    .line 153
    goto/16 :goto_70

    .line 156
    :cond_1b2
    iget-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    if-eqz v3, :cond_1fd

    .line 157
    const/4 v3, 0x0

    iput-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 158
    const/4 v3, 0x0

    iget v6, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 159
    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iget v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v3, v6

    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 160
    const-string v3, "report"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "slot "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " next mode, plan "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " s"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1fd
    const/4 v3, 0x0

    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 163
    const/4 v3, 0x0

    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 164
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v3

    .line 165
    if-ltz v3, :cond_222

    .line 166
    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    .line 167
    iget v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    const/16 v17, 0x1

    shl-int v17, v17, v3

    or-int v6, v6, v17

    iput v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    .line 168
    iget v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-gez v6, :cond_222

    const/4 v6, 0x3

    if-eq v3, v6, :cond_222

    .line 169
    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    .line 170
    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    iput v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    .line 173
    :cond_222
    if-eqz v11, :cond_227

    .line 174
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    .line 176
    :cond_227
    if-eqz v14, :cond_22e

    .line 177
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    .line 178
    iput-object v14, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 181
    :cond_22e
    if-lez v8, :cond_237

    iget-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v3, :cond_237

    .line 182
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    .line 184
    :cond_237
    if-eqz v15, :cond_23c

    .line 185
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    .line 187
    :cond_23c
    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 188
    iget v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    if-gtz v3, :cond_254

    .line 189
    iget-boolean v3, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v3, :cond_257

    if-lez v7, :cond_257

    move v3, v7

    :goto_24c
    iget-boolean v6, v10, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v6, :cond_259

    move v6, v8

    :goto_251
    invoke-virtual {v10, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/SessionRec;->sample(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    :cond_254
    move v3, v9

    goto/16 :goto_70

    :cond_257
    const/4 v3, 0x0

    goto :goto_24c

    :cond_259
    const/4 v6, 0x0

    goto :goto_251

    :cond_25b
    move v6, v3

    .line 194
    :cond_25c
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 195
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    :cond_26b
    :goto_26b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_293

    .line 197
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 198
    if-eqz v4, :cond_289

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lt v3, v9, :cond_26b

    .line 199
    :cond_289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26b

    .line 202
    :cond_293
    const/4 v2, 0x0

    move v3, v2

    :goto_295
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2b9

    .line 203
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

    .line 202
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_295

    .line 205
    :cond_2b9
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->tick(Landroid/content/Context;Ljava/util/List;)V

    .line 206
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v2, v12, v13, v4, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tick(Landroid/content/Context;JLjava/util/List;I)V

    .line 208
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_2d2
    if-ltz v4, :cond_300

    .line 209
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 210
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v7}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 211
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 212
    iget v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    if-lez v3, :cond_2ed

    if-eqz v6, :cond_2fa

    .line 213
    :cond_2ed
    sget-object v3, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 214
    iget-boolean v3, v2, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    if-nez v3, :cond_2fe

    const/4 v3, 0x1

    :goto_2f7
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 208
    :cond_2fa
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_2d2

    .line 214
    :cond_2fe
    const/4 v3, 0x0

    goto :goto_2f7

    .line 217
    :cond_300
    return-void

    .line 114
    :catch_301
    move-exception v10

    goto/16 :goto_ab

    :cond_304
    move-object v10, v3

    goto/16 :goto_f5

    :cond_307
    move v9, v6

    goto/16 :goto_8e
.end method

.method private static toastSaved(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 321
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 323
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u043a\u043b\u0430\u0434\u044a\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043d\u0430 "

    const-string v3, "Training report saved to the profile of "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 323
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    :goto_29
    return-void

    .line 324
    :cond_2a
    const-string v0, ""
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 326
    :catch_2d
    move-exception v0

    goto :goto_29
.end method

.method private static useType(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 332
    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 334
    :cond_d
    :goto_d
    return v0

    .line 333
    :catch_e
    move-exception v1

    goto :goto_d
.end method
