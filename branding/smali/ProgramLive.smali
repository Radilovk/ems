.class public final Lcom/isaigu/gymapp/train/utils/ProgramLive;
.super Ljava/lang/Object;
.source "ProgramLive.java"


# static fields
.field private static final CLIENT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLOCK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[J>;"
        }
    .end annotation
.end field

.field private static final ELAPSED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[J>;"
        }
    .end annotation
.end field

.field private static final HELD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field static final ON_TIME_MS:J = 0x5dcL

.field private static final PHASE_DUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[J>;"
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

.field private static final STAGE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAGE_CLOCK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field

.field static final TICK_GAP_MS:J = 0x190L


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

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLIENT:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE:Ljava/util/Map;

    .line 224
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE_CLOCK:Ljava/util/Map;

    .line 266
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    .line 338
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    .line 393
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PHASE_DUE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 431
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 432
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 433
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
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 50
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->clientChanged(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 53
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_24

    .line 54
    if-eqz p0, :cond_17

    :try_start_c
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_17

    .line 55
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_21

    .line 58
    if-eqz p2, :cond_1f

    if-eq p2, p1, :cond_1f

    .line 59
    :try_start_1c
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_24

    .line 61
    :cond_1f
    const/4 p1, 0x0

    .line 97
    :goto_20
    return-object p1

    .line 57
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0

    .line 96
    :catch_24
    move-exception v0

    goto :goto_20

    .line 65
    :cond_26
    if-eqz p0, :cond_85

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_85

    .line 66
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    monitor-enter v3
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2f} :catch_24

    .line 67
    :try_start_2f
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 68
    if-eqz v0, :cond_82

    .line 70
    const/4 v2, 0x1

    .line 72
    :goto_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_58

    .line 74
    :goto_3d
    if-eqz p2, :cond_44

    if-eq v0, p2, :cond_44

    .line 76
    :try_start_41
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 78
    :cond_44
    if-eqz v0, :cond_56

    if-eqz p2, :cond_56

    if-eq v0, p2, :cond_56

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->manual()Z
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_53} :catch_24

    move-result v3

    if-nez v3, :cond_5b

    :cond_56
    move-object p1, v0

    .line 79
    goto :goto_20

    .line 72
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v0

    .line 81
    :cond_5b
    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_77

    .line 82
    :goto_61
    const/4 v3, 0x4

    if-ge v1, v3, :cond_77

    .line 83
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 84
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 85
    if-eqz v3, :cond_74

    if-eqz v4, :cond_74

    .line 86
    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v3, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 82
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 90
    :cond_77
    if-eqz v2, :cond_7e

    .line 91
    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->onMaster(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    :goto_7c
    move-object p1, v0

    .line 95
    goto :goto_20

    .line 93
    :cond_7e
    invoke-static {p0, v0, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->onEdit(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_81} :catch_24

    goto :goto_7c

    :cond_82
    move v2, v1

    move-object v0, p1

    goto :goto_3c

    :cond_85
    move v2, v1

    move-object v0, p1

    goto :goto_3d
.end method

.method static clientChanged(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 103
    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_f

    :cond_d
    move v0, v1

    .line 109
    :goto_e
    return v0

    .line 106
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLIENT:Ljava/util/Map;

    monitor-enter v3

    .line 108
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLIENT:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 109
    if-eqz v0, :cond_32

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_2d
    monitor-exit v3

    goto :goto_e

    .line 110
    :catchall_2f
    move-exception v0

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    move v0, v1

    .line 109
    goto :goto_2d
.end method

.method static countTick(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 314
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    monitor-enter v1

    .line 315
    :try_start_9
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 316
    if-nez v0, :cond_25

    .line 317
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v1

    .line 326
    :goto_24
    return-void

    .line 320
    :cond_25
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    sub-long v4, v2, v4

    .line 321
    const/4 v6, 0x1

    aget-wide v6, v0, v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_41

    cmp-long v6, v4, v8

    if-lez v6, :cond_41

    const-wide/16 v6, 0x190

    cmp-long v6, v4, v6

    if-gtz v6, :cond_41

    .line 322
    const/4 v6, 0x0

    aget-wide v8, v0, v6

    add-long/2addr v4, v8

    aput-wide v4, v0, v6

    .line 324
    :cond_41
    const/4 v4, 0x1

    aput-wide v2, v0, v4

    .line 325
    monitor-exit v1

    goto :goto_24

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public static heldStage(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    .line 274
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    monitor-enter v1

    .line 275
    if-eqz p0, :cond_10

    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 276
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static keepMode(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)I
    .registers 3

    .prologue
    .line 131
    if-nez p1, :cond_4

    .line 132
    const/4 v0, 0x0

    .line 137
    :goto_3
    return v0

    .line 134
    :cond_4
    if-eqz p0, :cond_c

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 135
    :cond_c
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    goto :goto_3

    .line 137
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

    .line 146
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

    .line 170
    :goto_1a
    return v0

    .line 149
    :cond_1b
    iput p3, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 150
    invoke-static {p1, p3}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I

    move-result v3

    .line 151
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I

    move-result v4

    .line 152
    iget v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 153
    iget-object v6, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 154
    if-lez v5, :cond_37

    if-lez v3, :cond_37

    if-ge v5, v3, :cond_37

    .line 155
    :goto_31
    if-nez v6, :cond_39

    if-nez v0, :cond_39

    move v0, v1

    .line 156
    goto :goto_1a

    :cond_37
    move v0, v2

    .line 154
    goto :goto_31

    .line 158
    :cond_39
    if-eq p1, p2, :cond_3f

    if-lez v3, :cond_3f

    if-gtz v4, :cond_45

    .line 159
    :cond_3f
    const/4 v0, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 161
    :cond_45
    const/4 v0, 0x0

    sub-int v5, v3, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 162
    if-eq v4, v3, :cond_6b

    .line 163
    sget-object v6, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    monitor-enter v6
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_51} :catch_78

    .line 164
    :try_start_51
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
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

    .line 166
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_75

    .line 168
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

    .line 165
    goto :goto_61

    .line 166
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

    .line 169
    :catch_78
    move-exception v0

    move v0, v1

    .line 170
    goto :goto_1a
.end method

.method static manual()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 444
    :cond_b
    :goto_b
    return v0

    .line 442
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_16

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_b

    .line 443
    :catch_16
    move-exception v1

    goto :goto_b
.end method

.method public static noteReset(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 284
    if-nez p0, :cond_3

    .line 293
    :goto_2
    return-void

    .line 287
    :cond_3
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    monitor-enter v1

    .line 288
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_19

    .line 290
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    monitor-enter v1

    .line 291
    :try_start_f
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    monitor-exit v1

    goto :goto_2

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0

    .line 289
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method static noteStage(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 5

    .prologue
    .line 188
    if-nez p0, :cond_3

    .line 194
    :goto_2
    return-void

    .line 191
    :cond_3
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE:Ljava/util/Map;

    monitor-enter v1

    .line 192
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    monitor-exit v1

    goto :goto_2

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public static phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;I)J
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 409
    if-nez p0, :cond_11

    move-wide v0, v2

    .line 421
    :goto_10
    return-wide v0

    .line 412
    :cond_11
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PHASE_DUE:Ljava/util/Map;

    monitor-enter v1

    .line 413
    :try_start_14
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PHASE_DUE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 414
    if-eqz v0, :cond_4b

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    sub-long v4, v6, v4

    .line 415
    :goto_23
    if-eqz v0, :cond_4e

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_4e

    const-wide/16 v8, 0x5dc

    cmp-long v8, v4, v8

    if-gtz v8, :cond_4e

    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v8, :cond_4e

    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v8, :cond_4e

    .line 416
    const-wide/16 v8, 0x2

    div-long v8, v2, v8

    sub-long/2addr v2, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 417
    const/4 v4, 0x0

    add-long/2addr v6, v2

    aput-wide v6, v0, v4

    .line 418
    monitor-exit v1

    move-wide v0, v2

    goto :goto_10

    .line 414
    :cond_4b
    const-wide/16 v4, -0x1

    goto :goto_23

    .line 420
    :cond_4e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PHASE_DUE:Ljava/util/Map;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    add-long/2addr v6, v2

    aput-wide v6, v4, v5

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v1

    move-wide v0, v2

    goto :goto_10

    .line 422
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_14 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method static sameClient(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 4

    .prologue
    .line 126
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

.method public static seen(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    .line 118
    if-eqz p0, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_1f

    .line 119
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLIENT:Ljava/util/Map;

    monitor-enter v1

    .line 120
    :try_start_f
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLIENT:Ljava/util/Map;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    monitor-exit v1

    .line 123
    :cond_1f
    return-void

    .line 121
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw v0
.end method

.method public static shownTime(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 306
    sget-object v2, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    monitor-enter v2

    .line 307
    if-eqz p0, :cond_19

    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 308
    :goto_e
    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    :goto_17
    monitor-exit v2

    return v0

    .line 307
    :cond_19
    const/4 v0, 0x0

    goto :goto_e

    :cond_1b
    move v0, v1

    .line 308
    goto :goto_17

    .line 309
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public static stageClock(Lcom/isaigu/gymapp/train/model/TrainItem;)J
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 235
    if-eqz p0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->manual()Z

    move-result v0

    if-nez v0, :cond_f

    .line 261
    :cond_e
    :goto_e
    return-wide v2

    .line 238
    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    move-object v4, v0

    .line 240
    :goto_1a
    if-eqz v4, :cond_e

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-lez v0, :cond_e

    .line 243
    const/4 v0, 0x0

    iget v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 244
    sget-object v5, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE_CLOCK:Ljava/util/Map;

    monitor-enter v5
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2a} :catch_87

    .line 245
    :try_start_2a
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE_CLOCK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 247
    if-eqz v0, :cond_82

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v0, v7

    add-int/2addr v1, v7

    const/4 v7, 0x1

    aget v0, v0, v7

    sub-int v0, v1, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 248
    :goto_42
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE_CLOCK:Ljava/util/Map;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x1

    iget v7, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    aput v7, v6, v0

    invoke-interface {v1, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_84

    .line 250
    :try_start_53
    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_68

    .line 252
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    monitor-enter v1
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_60} :catch_87

    .line 253
    :try_start_60
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_89

    .line 256
    :cond_68
    :try_start_68
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    monitor-enter v1
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_87

    .line 257
    :try_start_6b
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_8c

    .line 259
    :try_start_71
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_8f

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_79} :catch_87

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_7d
    move-wide v2, v0

    goto :goto_e

    .line 239
    :cond_7f
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_1a

    :cond_82
    move v0, v1

    .line 247
    goto :goto_42

    .line 249
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw v0
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_87} :catch_87

    .line 260
    :catch_87
    move-exception v0

    goto :goto_e

    .line 254
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8c} :catch_87

    .line 258
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8f} :catch_87

    :cond_8f
    move-wide v0, v2

    .line 259
    goto :goto_7d
.end method

.method public static stageLive(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    .line 217
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE:Ljava/util/Map;

    monitor-enter v1

    .line 218
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 219
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    .line 220
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    return v0

    .line 219
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 220
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static stash(Ljava/lang/Object;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 4

    .prologue
    .line 37
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 38
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    monitor-enter v1

    .line 39
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->MASTER:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v1

    .line 42
    :cond_d
    return-void

    .line 40
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
    .line 176
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    monitor-enter v1

    .line 177
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->PLAN_DELTA:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 178
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    .line 179
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static takeStage(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 3

    .prologue
    .line 330
    sget-object v1, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE_CLOCK:Ljava/util/Map;

    monitor-enter v1

    .line 331
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->STAGE_CLOCK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    monitor-exit v1

    return-object v0

    .line 332
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static tickWork(Lcom/isaigu/gymapp/train/model/TrainItem;J)I
    .registers 12

    .prologue
    .line 347
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 348
    const-wide/16 v2, 0x3e7

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 349
    if-eqz p0, :cond_1c

    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v3, :cond_1c

    .line 350
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->countTick(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 352
    :cond_1c
    if-eqz p0, :cond_31

    .line 353
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    monitor-enter v3

    .line 354
    :try_start_21
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    const/4 v5, 0x2

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    const/4 v0, 0x1

    int-to-long v6, v2

    aput-wide v6, v5, v0

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    monitor-exit v3

    .line 357
    :cond_31
    return v2

    .line 355
    :catchall_32
    move-exception v0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_32

    throw v0
.end method

.method static total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I
    .registers 3

    .prologue
    .line 426
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static underWay(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    if-eqz p0, :cond_8

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    .line 205
    :cond_9
    :goto_9
    return v0

    .line 201
    :cond_a
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v2, :cond_9

    .line 204
    iget v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 205
    if-eqz p1, :cond_1a

    if-lez v2, :cond_1a

    iget v3, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-lt v2, v3, :cond_9

    :cond_1a
    move v0, v1

    goto :goto_9
.end method

.method public static workMs(Lcom/isaigu/gymapp/train/model/TrainItem;)J
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 366
    if-eqz p0, :cond_56

    iget v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    move v1, v0

    .line 367
    :goto_9
    if-eqz p0, :cond_36

    .line 368
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    monitor-enter v3

    .line 369
    :try_start_e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->HELD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_58

    .line 371
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    monitor-enter v3

    .line 372
    :try_start_17
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 373
    if-nez v0, :cond_5b

    .line 374
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->ELAPSED:Ljava/util/Map;

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    aput-wide v6, v4, v5

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :goto_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_63

    .line 381
    :cond_36
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    monitor-enter v3

    .line 382
    if-eqz p0, :cond_66

    :try_start_3b
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 383
    :goto_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_68

    .line 384
    if-eqz v0, :cond_6b

    aget-wide v4, v0, v8

    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-nez v3, :cond_6b

    aget-wide v4, v0, v2

    cmp-long v3, v4, v10

    if-lez v3, :cond_6b

    .line 385
    aget-wide v0, v0, v2

    .line 387
    :goto_55
    return-wide v0

    :cond_56
    move v1, v2

    .line 366
    goto :goto_9

    .line 370
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 376
    :cond_5b
    const/4 v4, 0x1

    :try_start_5c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    aput-wide v6, v0, v4

    goto :goto_35

    .line 378
    :catchall_63
    move-exception v0

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_63

    throw v0

    .line 382
    :cond_66
    const/4 v0, 0x0

    goto :goto_43

    .line 383
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .line 387
    :cond_6b
    int-to-long v0, v1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_55
.end method
