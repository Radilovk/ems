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

    .line 226
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

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
    .line 268
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 269
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 270
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

    .line 276
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 281
    :cond_b
    :goto_b
    return v0

    .line 279
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_16

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_b

    .line 280
    :catch_16
    move-exception v1

    goto :goto_b
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

.method public static tickWork(Lcom/isaigu/gymapp/train/model/TrainItem;J)I
    .registers 12

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 236
    const-wide/16 v2, 0x3e7

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 237
    if-eqz p0, :cond_22

    .line 238
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    monitor-enter v3

    .line 239
    :try_start_12
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    const/4 v5, 0x2

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    const/4 v0, 0x1

    int-to-long v6, v2

    aput-wide v6, v5, v0

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v3

    .line 242
    :cond_22
    return v2

    .line 240
    :catchall_23
    move-exception v0

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw v0
.end method

.method static total(Lcom/isaigu/gymapp/bean/TrainProgram;I)I
    .registers 3

    .prologue
    .line 263
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 264
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
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 251
    if-eqz p0, :cond_29

    iget v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    move v1, v0

    .line 253
    :goto_6
    sget-object v3, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    monitor-enter v3

    .line 254
    if-eqz p0, :cond_2b

    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/train/utils/ProgramLive;->CLOCK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 255
    :goto_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_2d

    .line 256
    if-eqz v0, :cond_30

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-nez v3, :cond_30

    aget-wide v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_30

    .line 257
    aget-wide v0, v0, v2

    .line 259
    :goto_28
    return-wide v0

    :cond_29
    move v1, v2

    .line 251
    goto :goto_6

    .line 254
    :cond_2b
    const/4 v0, 0x0

    goto :goto_13

    .line 255
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    .line 259
    :cond_30
    int-to-long v0, v1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_28
.end method
