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
    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 72
    return-void
.end method

.method public static pauseClick(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_f

    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 37
    :goto_7
    if-eqz v1, :cond_11

    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-object v1, v0

    .line 38
    :goto_c
    if-nez v1, :cond_13

    .line 58
    :goto_e
    return-void

    :cond_f
    move-object v1, v0

    .line 36
    goto :goto_7

    :cond_11
    move-object v1, v0

    .line 37
    goto :goto_c

    .line 41
    :cond_13
    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v0

    .line 42
    :goto_19
    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v2, :cond_55

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 44
    const/4 v0, 0x0

    const/16 v2, 0x64

    iget v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 45
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/TrainIndex;->select(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V

    .line 54
    :goto_32
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_35} :catch_36

    goto :goto_e

    .line 55
    :catch_36
    move-exception v0

    .line 56
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

    goto :goto_e

    .line 41
    :cond_50
    :try_start_50
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    goto :goto_19

    .line 46
    :cond_55
    if-eqz v0, :cond_60

    if-eqz p1, :cond_60

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 48
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->clear(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_32

    .line 49
    :cond_60
    if-eqz v0, :cond_66

    .line 50
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->clear(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_32

    .line 52
    :cond_66
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/TrainIndex;->select(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_69} :catch_36

    goto :goto_32
.end method

.method private static select(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V

    .line 64
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 65
    return-void
.end method

.method static snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    .line 88
    if-eqz v5, :cond_58

    invoke-virtual {v5}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    move-object v4, v1

    .line 89
    :goto_e
    if-eqz v5, :cond_12

    iget-object v0, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 90
    :cond_12
    const/16 v1, 0x8

    new-array v5, v1, [I

    .line 91
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v1

    if-eqz v1, :cond_5a

    move v1, v2

    :goto_1d
    aput v1, v5, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isHzSelected()Z

    move-result v1

    if-eqz v1, :cond_5c

    move v1, v2

    :goto_26
    aput v1, v5, v2

    const/4 v6, 0x2

    .line 92
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v1

    if-eqz v1, :cond_5e

    move v1, v2

    :goto_30
    aput v1, v5, v6

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseHzSelected()Z

    move-result v6

    if-eqz v6, :cond_60

    :goto_39
    aput v2, v5, v1

    const/4 v2, 0x4

    .line 93
    if-eqz v4, :cond_62

    iget v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_40
    aput v1, v5, v2

    const/4 v2, 0x5

    if-eqz v4, :cond_64

    iget v1, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_47
    aput v1, v5, v2

    const/4 v2, 0x6

    .line 94
    if-eqz v0, :cond_66

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_4e
    aput v1, v5, v2

    const/4 v1, 0x7

    if-eqz v0, :cond_55

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_55
    aput v3, v5, v1

    .line 90
    return-object v5

    :cond_58
    move-object v4, v0

    .line 88
    goto :goto_e

    :cond_5a
    move v1, v3

    .line 91
    goto :goto_1d

    :cond_5c
    move v1, v3

    goto :goto_26

    :cond_5e
    move v1, v3

    .line 92
    goto :goto_30

    :cond_60
    move v2, v3

    goto :goto_39

    :cond_62
    move v1, v3

    .line 93
    goto :goto_40

    :cond_64
    move v1, v3

    goto :goto_47

    :cond_66
    move v1, v3

    .line 94
    goto :goto_4e
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

    .line 99
    if-nez p0, :cond_5

    .line 138
    :cond_4
    return-void

    .line 102
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v8

    move v2, v3

    .line 104
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 105
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 106
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 104
    :cond_28
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 110
    :cond_2c
    :try_start_2c
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v9

    .line 111
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

    if-lez v1, :cond_7c

    move v4, v5

    .line 113
    :goto_42
    sget-object v10, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    monitor-enter v10
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_45} :catch_62

    .line 114
    :try_start_45
    sget-object v1, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    .line 115
    if-nez v1, :cond_7e

    .line 116
    new-instance v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/TrainIndex$State;-><init>()V

    .line 117
    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    .line 118
    iput-object v9, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 119
    sget-object v4, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v10

    goto :goto_28

    .line 122
    :catchall_5f
    move-exception v0

    monitor-exit v10
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v0
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_62} :catch_62

    .line 134
    :catch_62
    move-exception v0

    .line 135
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

    :cond_7c
    move v4, v3

    .line 111
    goto :goto_42

    .line 122
    :cond_7e
    :try_start_7e
    monitor-exit v10
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_5f

    .line 123
    :try_start_7f
    iget-object v10, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v10

    if-nez v10, :cond_8c

    .line 124
    iput-object v9, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 125
    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    goto :goto_28

    .line 128
    :cond_8c
    if-eqz v4, :cond_28

    if-nez v8, :cond_28

    iget-wide v10, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1388

    cmp-long v4, v10, v12

    if-ltz v4, :cond_28

    .line 129
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->clear(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 130
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v4

    iput-object v4, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 131
    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    .line 132
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_a8} :catch_62

    goto :goto_28
.end method

.method static touch(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 75
    sget-object v1, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    monitor-enter v1

    .line 76
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    .line 77
    if-nez v0, :cond_17

    .line 78
    new-instance v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/TrainIndex$State;-><init>()V

    .line 79
    sget-object v2, Lcom/isaigu/gymapp/wearable/TrainIndex;->STATES:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->lastAction:J

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/TrainIndex;->snapshot(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/TrainIndex$State;->seen:[I

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method
