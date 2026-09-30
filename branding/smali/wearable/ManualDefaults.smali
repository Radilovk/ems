.class public final Lcom/isaigu/gymapp/wearable/ManualDefaults;
.super Ljava/lang/Object;
.source "ManualDefaults.java"


# static fields
.field private static final SEEN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 78
    if-eqz p0, :cond_a

    iget-wide v0, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 82
    :cond_a
    :goto_a
    return-void

    .line 81
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_a
.end method

.method static assisted()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 73
    :cond_12
    :goto_12
    return v0

    .line 72
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method static tick(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    if-nez p1, :cond_5

    .line 66
    :goto_4
    return-void

    .line 31
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->init(Landroid/content/Context;)V

    move v5, v2

    .line 33
    :goto_9
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_db

    .line 34
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 35
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_43

    move v4, v3

    .line 36
    :goto_28
    sget-object v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    if-nez v4, :cond_45

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_9

    :cond_43
    move v4, v2

    .line 35
    goto :goto_28

    .line 41
    :cond_45
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 42
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    if-eqz v4, :cond_d5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 43
    :goto_55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v6, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 47
    if-eqz v1, :cond_91

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v6, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d9

    :cond_91
    move v1, v3

    .line 48
    :goto_92
    sget-object v7, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v4, :cond_3f

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 53
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->applyTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 57
    sget-boolean v4, Lcom/isaigu/gymapp/wearable/ManualDefaults;->primed:Z

    if-eqz v4, :cond_3f

    if-eqz v1, :cond_3f

    .line 58
    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_b6} :catch_b7

    goto :goto_3f

    .line 62
    :catch_b7
    move-exception v0

    .line 63
    const-string v1, "manual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaults: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_d0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->tick(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_4

    .line 42
    :cond_d5
    :try_start_d5
    const-string v4, ""

    goto/16 :goto_55

    :cond_d9
    move v1, v2

    .line 47
    goto :goto_92

    .line 61
    :cond_db
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->primed:Z
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_de} :catch_b7

    goto :goto_d0
.end method
