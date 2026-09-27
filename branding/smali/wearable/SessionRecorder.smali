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

.field private static app:Landroid/content/Context;

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    return-object v0
.end method

.method private static aiPhase()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 204
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v1, v2, :cond_a

    .line 210
    :cond_9
    :goto_9
    return v0

    .line 207
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 208
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

    .line 209
    :catch_2b
    move-exception v1

    goto :goto_9
.end method

.method private static close(ILcom/isaigu/gymapp/wearable/SessionRec;J)V
    .registers 8

    .prologue
    const/16 v2, 0x3c

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-nez p1, :cond_e

    .line 175
    :goto_d
    return-void

    .line 163
    :cond_e
    iput-wide p2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    .line 164
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onEnd(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 165
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v0

    if-ge v0, v2, :cond_42

    .line 166
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

    goto :goto_d

    .line 169
    :cond_42
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v0, :cond_54

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v0

    if-lez v0, :cond_54

    .line 170
    iput v2, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 173
    :cond_54
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    goto :goto_d
.end method

.method public static ensure(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 43
    if-nez p0, :cond_3

    .line 53
    :cond_2
    :goto_2
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 47
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->started:Z

    if-nez v0, :cond_2

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->started:Z

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/SessionRecorder$Tick;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    const-string v0, "report"

    const-string v1, "session recorder on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static freshHr(J)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 194
    const-wide/16 v2, 0x1f40

    :try_start_3
    invoke-static {p0, p1, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->last()I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_12

    move-result v0

    .line 197
    :cond_11
    :goto_11
    return v0

    .line 196
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static musicOn()Z
    .registers 1

    .prologue
    .line 216
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 218
    :goto_4
    return v0

    .line 217
    :catch_5
    move-exception v0

    .line 218
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static save(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 178
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->app:Landroid/content/Context;

    .line 179
    if-nez v1, :cond_5

    .line 190
    :goto_4
    return-void

    .line 182
    :cond_5
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v0

    .line 183
    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/SessionStore;->save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 185
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0414\u043e\u043a\u043b\u0430\u0434\u044a\u0442 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u043f\u0438\u0441\u0430\u043d \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043d\u0430 "

    const-string v3, "Training report saved to the profile of "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 185
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 188
    :catch_34
    move-exception v0

    goto :goto_4

    .line 186
    :cond_36
    const-string v0, ""
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_38} :catch_34

    goto :goto_23
.end method

.method static tick()V
    .registers 16

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 69
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 71
    :goto_f
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->freshHr(J)I

    move-result v5

    .line 72
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->aiPhase()I

    move-result v6

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->musicOn()Z

    move-result v9

    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz v2, :cond_144

    .line 76
    const/4 v0, 0x0

    move v3, v0

    move v4, v1

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_145

    .line 77
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 78
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 79
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6b

    iget-object v7, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v7, :cond_6b

    iget-object v7, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v7, :cond_6b

    const/4 v7, 0x1

    .line 80
    :goto_4c
    if-eqz v1, :cond_60

    if-eqz v7, :cond_5c

    iget-object v8, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v12, v8, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v14, v1, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    cmp-long v8, v12, v14

    if-eqz v8, :cond_60

    .line 81
    :cond_5c
    invoke-static {v3, v1, v10, v11}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    .line 82
    const/4 v1, 0x0

    .line 84
    :cond_60
    if-nez v7, :cond_6d

    move v1, v4

    .line 76
    :goto_63
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_21

    .line 70
    :cond_68
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_f

    .line 79
    :cond_6b
    const/4 v7, 0x0

    goto :goto_4c

    .line 87
    :cond_6d
    iget-object v7, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v12, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 88
    if-nez v1, :cond_77

    if-nez v12, :cond_77

    move v1, v4

    .line 89
    goto :goto_63

    .line 91
    :cond_77
    const/4 v8, 0x0

    .line 92
    if-eqz v12, :cond_1d8

    if-nez v4, :cond_1d8

    .line 93
    const/4 v7, 0x1

    .line 94
    const/4 v4, 0x1

    move v8, v4

    .line 96
    :goto_7f
    if-nez v1, :cond_1d5

    .line 97
    new-instance v4, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-direct {v4, v0, v10, v11}, Lcom/isaigu/gymapp/wearable/SessionRec;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V

    .line 98
    iput-boolean v8, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    .line 99
    sget-object v1, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v1, 0x0

    .line 102
    :try_start_92
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v8

    iget v1, v8, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_9c} :catch_1d2

    .line 105
    :goto_9c
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onStart(Lcom/isaigu/gymapp/wearable/SessionRec;I)V

    .line 106
    const-string v1, "report"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "session start slot "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " user "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " plan "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v4, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " s"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    .line 109
    :goto_d6
    if-nez v12, :cond_113

    .line 111
    iget v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-lez v1, :cond_e6

    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    if-lez v1, :cond_109

    iget v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iget v4, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    if-lt v1, v4, :cond_109

    :cond_e6
    const/4 v1, 0x1

    move v4, v1

    .line 112
    :goto_e8
    if-eqz v4, :cond_10c

    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    add-int/lit8 v1, v1, 0x1

    :goto_ee
    iput v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 113
    if-eqz v4, :cond_10e

    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    :goto_f4
    iput v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 114
    if-eqz v4, :cond_fd

    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    const/4 v4, 0x2

    if-ge v1, v4, :cond_103

    :cond_fd
    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    const/16 v4, 0x708

    if-le v1, v4, :cond_119

    .line 115
    :cond_103
    invoke-static {v3, v8, v10, v11}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    move v1, v7

    .line 116
    goto/16 :goto_63

    .line 111
    :cond_109
    const/4 v1, 0x0

    move v4, v1

    goto :goto_e8

    .line 112
    :cond_10c
    const/4 v1, 0x0

    goto :goto_ee

    .line 113
    :cond_10e
    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    .line 119
    :cond_113
    const/4 v1, 0x0

    iput v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 120
    const/4 v1, 0x0

    iput v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 122
    :cond_119
    if-lez v6, :cond_122

    iget-boolean v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v1, :cond_122

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    .line 125
    :cond_122
    if-eqz v9, :cond_127

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    .line 128
    :cond_127
    invoke-static {v8, v12}, Lcom/isaigu/gymapp/wearable/BandWorkout;->onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V

    .line 129
    iget v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    if-gtz v1, :cond_13d

    .line 130
    iget-boolean v1, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v1, :cond_140

    if-lez v5, :cond_140

    move v1, v5

    :goto_135
    iget-boolean v4, v8, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_142

    move v4, v6

    :goto_13a
    invoke-virtual {v8, v0, v1, v4}, Lcom/isaigu/gymapp/wearable/SessionRec;->sample(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    :cond_13d
    move v1, v7

    goto/16 :goto_63

    :cond_140
    const/4 v1, 0x0

    goto :goto_135

    :cond_142
    const/4 v4, 0x0

    goto :goto_13a

    :cond_144
    move v4, v1

    .line 135
    :cond_145
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    :cond_154
    :goto_154
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    if-eqz v2, :cond_172

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_154

    .line 140
    :cond_172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_154

    .line 143
    :cond_17c
    const/4 v0, 0x0

    move v1, v0

    :goto_17e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a1

    .line 144
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->OPEN:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    invoke-static {v2, v0, v10, v11}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->close(ILcom/isaigu/gymapp/wearable/SessionRec;J)V

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17e

    .line 147
    :cond_1a1
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1aa
    if-ltz v1, :cond_1d1

    .line 148
    sget-object v0, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SessionRec;

    .line 149
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 150
    iget v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 151
    iget v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    if-lez v2, :cond_1c5

    if-eqz v4, :cond_1cd

    .line 152
    :cond_1c5
    sget-object v2, Lcom/isaigu/gymapp/wearable/SessionRecorder;->POST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->save(Lcom/isaigu/gymapp/wearable/SessionRec;)V

    .line 147
    :cond_1cd
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1aa

    .line 156
    :cond_1d1
    return-void

    .line 103
    :catch_1d2
    move-exception v8

    goto/16 :goto_9c

    :cond_1d5
    move-object v8, v1

    goto/16 :goto_d6

    :cond_1d8
    move v7, v4

    goto/16 :goto_7f
.end method
