.class public final Lcom/isaigu/gymapp/wearable/TrainIndex;
.super Ljava/lang/Object;
.source "TrainIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/TrainIndex$State;
    }
.end annotation


# static fields
.field static final IDLE_MS:J = 0x1388L

.field static final MUSCLE:I = 0x1

.field private static final STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Lcom/isaigu/gymapp/wearable/TrainIndex$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 69
    return-void
.end method

.method public static pauseClick(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 39
    if-eqz p0, :cond_10

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 40
    :goto_7
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 41
    :cond_d
    if-nez v0, :cond_12

    .line 55
    :goto_f
    return-void

    :cond_10
    move-object v1, v0

    .line 39
    goto :goto_7

    .line 44
    :cond_12
    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_3e

    .line 45
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_f

    .line 52
    :catch_24
    move-exception v0

    .line 53
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause click: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 49
    :cond_3e
    :try_start_3e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/TrainIndex;->select(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V

    .line 50
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 51
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_47} :catch_24

    goto :goto_f
.end method

.method private static select(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 61
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 62
    return-void
.end method

.method static snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 87
    :goto_c
    const/16 v1, 0x8

    new-array v4, v1, [I

    .line 88
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-eqz v1, :cond_54

    move v1, v2

    :goto_17
    aput v1, v4, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v2

    :goto_20
    aput v1, v4, v2

    const/4 v5, 0x2

    .line 89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v1

    if-eqz v1, :cond_58

    move v1, v2

    :goto_2a
    aput v1, v4, v5

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v5

    if-eqz v5, :cond_5a

    :goto_33
    aput v2, v4, v1

    const/4 v2, 0x4

    .line 90
    if-eqz v0, :cond_5c

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_3a
    aput v1, v4, v2

    const/4 v2, 0x5

    if-eqz v0, :cond_5e

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_41
    aput v1, v4, v2

    const/4 v2, 0x6

    .line 91
    if-eqz v0, :cond_60

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_48
    aput v1, v4, v2

    const/4 v1, 0x7

    if-eqz v0, :cond_4f

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_4f
    aput v3, v4, v1

    .line 87
    return-object v4

    .line 85
    :cond_52
    const/4 v0, 0x0

    goto :goto_c

    :cond_54
    move v1, v3

    .line 88
    goto :goto_17

    :cond_56
    move v1, v3

    goto :goto_20

    :cond_58
    move v1, v3

    .line 89
    goto :goto_2a

    :cond_5a
    move v2, v3

    goto :goto_33

    :cond_5c
    move v1, v3

    .line 90
    goto :goto_3a

    :cond_5e
    move v1, v3

    goto :goto_41

    :cond_60
    move v1, v3

    .line 91
    goto :goto_48
.end method

.method static tick(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 96
    if-nez p0, :cond_5

    .line 144
    :cond_4
    return-void

    .line 99
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 100
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v8

    move v2, v3

    .line 101
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 102
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 103
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 101
    :cond_28
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 107
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 108
    if-nez v8, :cond_53

    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-ne v4, v5, :cond_53

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v4, :cond_53

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v4, :cond_53

    .line 110
    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 113
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 114
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V

    .line 116
    :cond_53
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v9

    .line 117
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v4, 0x1

    aget v4, v9, v4

    add-int/2addr v1, v4

    const/4 v4, 0x2

    aget v4, v9, v4

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, v9, v4

    add-int/2addr v1, v4

    if-lez v1, :cond_a3

    move v4, v5

    .line 119
    :goto_69
    sget-object v10, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    monitor-enter v10
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_6c} :catch_89

    .line 120
    :try_start_6c
    sget-object v1, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    .line 121
    if-nez v1, :cond_a5

    .line 122
    new-instance v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/TrainIndex$State;-><init>()V

    .line 123
    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    .line 124
    iput-object v9, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 125
    sget-object v4, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v10

    goto :goto_28

    .line 128
    :catchall_86
    move-exception v0

    monitor-exit v10
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_86

    :try_start_88
    throw v0
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_89} :catch_89

    .line 140
    :catch_89
    move-exception v0

    .line 141
    const-string v1, "index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tick: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_a3
    move v4, v3

    .line 117
    goto :goto_69

    .line 128
    :cond_a5
    :try_start_a5
    monitor-exit v10
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_86

    .line 129
    :try_start_a6
    iget-object v10, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v10

    if-nez v10, :cond_b4

    .line 130
    iput-object v9, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 131
    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    goto/16 :goto_28

    .line 134
    :cond_b4
    if-eqz v4, :cond_28

    if-nez v8, :cond_28

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->active(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-wide v10, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1388

    cmp-long v4, v10, v12

    if-ltz v4, :cond_28

    .line 135
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->clear(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 136
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v4

    iput-object v4, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 137
    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    .line 138
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_d6} :catch_89

    goto/16 :goto_28
.end method

.method static touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 72
    sget-object v1, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    monitor-enter v1

    .line 73
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    .line 74
    if-nez v0, :cond_17

    .line 75
    new-instance v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex$State;-><init>()V

    .line 76
    sget-object v2, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    .line 79
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method
