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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static primed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 66
    if-eqz p0, :cond_a

    iget-wide v0, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 70
    :cond_a
    :goto_a
    return-void

    .line 69
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ProgramFit;->applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_a
.end method

.method static assisted()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 61
    :cond_12
    :goto_12
    return v0

    .line 60
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

    const/4 v4, 0x0

    .line 27
    if-nez p1, :cond_5

    .line 54
    :goto_4
    return-void

    :cond_5
    move v5, v4

    .line 31
    :goto_6
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_93

    .line 32
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 33
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_40

    move v2, v3

    .line 34
    :goto_25
    sget-object v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 35
    if-nez v2, :cond_42

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_40
    move v2, v4

    .line 33
    goto :goto_25

    .line 39
    :cond_42
    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 40
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3c

    .line 43
    :cond_52
    sget-object v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->primed:Z

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 46
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_74} :catch_75

    goto :goto_3c

    .line 50
    :catch_75
    move-exception v0

    .line 51
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

    .line 53
    :goto_8e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->tick(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_4

    .line 49
    :cond_93
    const/4 v0, 0x1

    :try_start_94
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->primed:Z
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_96} :catch_75

    goto :goto_8e
.end method
