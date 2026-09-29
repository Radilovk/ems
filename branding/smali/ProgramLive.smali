.class public final Lcom/isaigu/gymapp/train/utils/ProgramLive;
.super Ljava/lang/Object;
.source "ProgramLive.java"


# static fields
.field private static final MASTER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLAN_DELTA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 146
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 147
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 148
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5
.end method

.method public static before(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 50
    if-eqz p0, :cond_5f

    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_5f

    .line 51
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_2f

    .line 52
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 53
    if-eqz v0, :cond_5c

    .line 55
    const/4 v2, 0x1

    .line 57
    :goto_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_2c

    .line 59
    :goto_18
    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    if-eq v0, p2, :cond_2a

    :try_start_1e
    invoke-static {v0, p2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->manual()Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_27} :catch_2f

    move-result v3

    if-nez v3, :cond_31

    :cond_2a
    move-object p1, v0

    .line 79
    :goto_2b
    return-object p1

    .line 57
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0

    .line 78
    :catch_2f
    move-exception v0

    goto :goto_2b

    .line 62
    :cond_31
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_51

    .line 63
    :goto_37
    const/4 v3, 0x4

    if-ge v1, v3, :cond_51

    .line 64
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 65
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 66
    if-eqz v3, :cond_4e

    if-eqz v4, :cond_4e

    .line 67
    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v5, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 68
    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v3, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 63
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 72
    :cond_51
    if-eqz v2, :cond_58

    .line 73
    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->onMaster(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    :goto_56
    move-object p1, v0

    .line 77
    goto :goto_2b

    .line 75
    :cond_58
    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->onEdit(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_5b} :catch_2f

    goto :goto_56

    :cond_5c
    move v2, v1

    move-object v0, p1

    goto :goto_17

    :cond_5f
    move v2, v1

    move-object v0, p1

    goto :goto_18
.end method

.method public static keepMode(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)I
    .registers 3

    .prologue
    .line 89
    if-nez p1, :cond_4

    .line 90
    const/4 v0, 0x0

    .line 95
    :goto_3
    return v0

    .line 92
    :cond_4
    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 93
    :cond_c
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    goto :goto_3

    .line 95
    :cond_f
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    goto :goto_3
.end method

.method public static liveRemaining(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;I)I
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 104
    if-eqz p0, :cond_19

    :try_start_5
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_19

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->manual()Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    move v0, v1

    .line 128
    :goto_1a
    return v0

    .line 107
    :cond_1b
    iput p3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 108
    invoke-static {p1, p3}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I

    move-result v3

    .line 109
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I

    move-result v4

    .line 110
    iget v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 111
    iget-object v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 112
    if-lez v5, :cond_37

    if-lez v3, :cond_37

    if-ge v5, v3, :cond_37

    .line 113
    :goto_31
    if-nez v6, :cond_39

    if-nez v0, :cond_39

    move v0, v1

    .line 114
    goto :goto_1a

    :cond_37
    move v0, v2

    .line 112
    goto :goto_31

    .line 116
    :cond_39
    if-eq p1, p2, :cond_3f

    if-lez v3, :cond_3f

    if-gtz v4, :cond_45

    .line 117
    :cond_3f
    const/4 v0, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 119
    :cond_45
    const/4 v0, 0x0

    sub-int v5, v3, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 120
    if-eq v4, v3, :cond_6b

    .line 121
    sget-object v6, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    monitor-enter v6
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_78

    .line 122
    :try_start_51
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    sget-object v7, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_61
    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_75

    .line 126
    :cond_6b
    const/4 v0, 0x1

    sub-int v2, v4, v5

    :try_start_6e
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_78

    move-result v0

    goto :goto_1a

    :cond_73
    move v0, v2

    .line 123
    goto :goto_61

    .line 124
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v6
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw v0
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_78} :catch_78

    .line 127
    :catch_78
    move-exception v0

    move v0, v1

    .line 128
    goto :goto_1a
.end method

.method static manual()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 159
    :cond_b
    :goto_b
    return v0

    .line 157
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_16

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_b

    .line 158
    :catch_16
    move-exception v1

    goto :goto_b
.end method

.method static sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 4

    .prologue
    .line 84
    if-eq p0, p1, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static stash(Ljava/lang/Object;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 4

    .prologue
    .line 35
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 36
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    monitor-enter v1

    .line 37
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v1

    .line 40
    :cond_d
    return-void

    .line 38
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public static takePlanDelta(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    .line 134
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    monitor-enter v1

    .line 135
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 137
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method static total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I
    .registers 3

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
