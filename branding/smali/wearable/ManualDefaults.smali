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

.field static final STANDARD:[[I

.field private static primed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x6

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_5e

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->STANDARD:[[I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    return-void

    .line 26
    :array_2e
    .array-data 4
        0x55
        0x15e
        0x4
        0x4
        0x14
        0x1f4
    .end array-data

    :array_3e
    .array-data 4
        0x5a
        0x15e
        0x6
        0x4
        0x14
        0x1f4
    .end array-data

    :array_4e
    .array-data 4
        0x1e
        0x15e
        0x8
        0x2
        0x14
        0x1f4
    .end array-data

    :array_5e
    .array-data 4
        0x5
        0x12c
        0xa
        0x2
        0x14
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 13

    .prologue
    .line 75
    if-eqz p0, :cond_a

    iget-wide v0, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 112
    :cond_a
    :goto_a
    return-void

    .line 78
    :cond_b
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 79
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 80
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 83
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->forClient(Lcom/isaigu/gymapp/ai/AiProfile;)[[I

    move-result-object v3

    .line 84
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v4

    .line 85
    const/4 v1, 0x4

    new-array v5, v1, [Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v1, 0x0

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v6, v5, v1

    const/4 v1, 0x2

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v0, v5, v1

    .line 87
    const/4 v0, 0x0

    :goto_37
    array-length v1, v5

    if-ge v0, v1, :cond_a4

    .line 88
    aget-object v6, v5, v0

    .line 89
    if-nez v6, :cond_41

    .line 87
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 92
    :cond_41
    aget-object v1, v3, v0

    const/4 v7, 0x0

    aget v1, v1, v7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 93
    aget-object v1, v3, v0

    const/4 v7, 0x1

    aget v1, v1, v7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 94
    aget-object v1, v3, v0

    const/4 v7, 0x2

    aget v1, v1, v7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 95
    aget-object v1, v3, v0

    const/4 v7, 0x3

    aget v1, v1, v7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 96
    aget-object v1, v3, v0

    const/4 v7, 0x4

    aget v1, v1, v7

    mul-int/lit8 v1, v1, 0x3c

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 97
    aget-object v1, v3, v0

    const/4 v7, 0x5

    aget v1, v1, v7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 98
    aget-object v1, v3, v0

    const/4 v7, 0x5

    aget v1, v1, v7

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 99
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_3e

    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_3e

    .line 100
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->apply([I)[I

    move-result-object v7

    .line 101
    const/4 v1, 0x0

    :goto_8d
    array-length v8, v7

    iget-object v9, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v1, v8, :cond_3e

    .line 102
    iget-object v8, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v8, v8, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v9, v7, v1

    aput v9, v8, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 107
    :cond_a4
    :try_start_a4
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a7} :catch_f9

    .line 110
    :goto_a7
    const-string v0, "manual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "standard for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 108
    :catch_f9
    move-exception v0

    goto :goto_a7
.end method

.method private static assisted()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 67
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 68
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 70
    :cond_12
    :goto_12
    return v0

    .line 69
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method static forClient(Lcom/isaigu/gymapp/ai/AiProfile;)[[I
    .registers 12

    .prologue
    .line 116
    sget-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->STANDARD:[[I

    array-length v0, v0

    new-array v5, v0, [[I

    .line 117
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v0, v5

    if-ge v1, v0, :cond_1a

    .line 118
    sget-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->STANDARD:[[I

    aget-object v0, v0, v1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v5, v1

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 120
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v6

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_99

    const/4 v0, 0x1

    .line 122
    :goto_25
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v1, v2, :cond_9b

    const/4 v1, 0x1

    .line 123
    :goto_2c
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_9d

    const/4 v2, 0x1

    .line 124
    :goto_3b
    const/4 v3, 0x0

    move v4, v3

    :goto_3d
    const/4 v3, 0x3

    if-ge v4, v3, :cond_a3

    .line 125
    if-eqz v0, :cond_57

    .line 126
    aget-object v3, v5, v4

    const/4 v7, 0x1

    aget v8, v3, v7

    add-int/lit8 v8, v8, -0x32

    aput v8, v3, v7

    .line 127
    aget-object v7, v5, v4

    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v3, 0x2

    if-ge v4, v3, :cond_9f

    const/4 v3, 0x1

    :goto_54
    add-int/2addr v3, v9

    aput v3, v7, v8

    .line 129
    :cond_57
    if-eqz v2, :cond_6e

    .line 130
    aget-object v3, v5, v4

    const/4 v7, 0x1

    aget v8, v3, v7

    add-int/lit8 v8, v8, -0x19

    aput v8, v3, v7

    .line 131
    aget-object v7, v5, v4

    const/4 v8, 0x3

    aget v9, v7, v8

    const/4 v3, 0x2

    if-ge v4, v3, :cond_a1

    const/4 v3, 0x1

    :goto_6b
    add-int/2addr v3, v9

    aput v3, v7, v8

    .line 133
    :cond_6e
    aget-object v3, v5, v4

    const/4 v7, 0x3

    aget v8, v3, v7

    iget v9, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/2addr v8, v9

    aput v8, v3, v7

    .line 134
    iget v3, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    if-lez v3, :cond_95

    .line 135
    aget-object v3, v5, v4

    const/4 v7, 0x5

    const/16 v8, 0x5dc

    aget-object v9, v5, v4

    const/4 v10, 0x5

    aget v9, v9, v10

    iget v10, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/2addr v9, v10

    add-int/lit16 v9, v9, 0x1f3

    div-int/lit16 v9, v9, 0x1f4

    mul-int/lit16 v9, v9, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v3, v7

    .line 124
    :cond_95
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3d

    .line 121
    :cond_99
    const/4 v0, 0x0

    goto :goto_25

    .line 122
    :cond_9b
    const/4 v1, 0x0

    goto :goto_2c

    .line 123
    :cond_9d
    const/4 v2, 0x0

    goto :goto_3b

    .line 127
    :cond_9f
    const/4 v3, 0x0

    goto :goto_54

    .line 131
    :cond_a1
    const/4 v3, 0x0

    goto :goto_6b

    .line 138
    :cond_a3
    if-eqz v1, :cond_b6

    if-nez v2, :cond_b6

    .line 139
    const/4 v0, 0x0

    aget-object v0, v5, v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 140
    const/4 v0, 0x1

    aget-object v0, v5, v0

    const/4 v1, 0x1

    const/16 v2, 0x190

    aput v2, v0, v1

    .line 142
    :cond_b6
    iget v0, v6, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    if-lez v0, :cond_c2

    .line 143
    const/4 v0, 0x3

    aget-object v0, v5, v0

    const/4 v1, 0x5

    const/16 v2, 0x1f4

    aput v2, v0, v1

    .line 145
    :cond_c2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_d9

    .line 146
    const/4 v0, 0x0

    aget-object v0, v5, v0

    const/4 v1, 0x4

    const/16 v2, 0x19

    aput v2, v0, v1

    .line 147
    const/4 v0, 0x2

    aget-object v0, v5, v0

    const/4 v1, 0x4

    const/16 v2, 0x19

    aput v2, v0, v1

    .line 154
    :cond_d8
    :goto_d8
    return-object v5

    .line 148
    :cond_d9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_ef

    .line 149
    const/4 v0, 0x3

    aget-object v0, v5, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 150
    const/4 v0, 0x3

    aget-object v0, v5, v0

    const/4 v1, 0x4

    const/16 v2, 0x19

    aput v2, v0, v1

    goto :goto_d8

    .line 151
    :cond_ef
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_d8

    .line 152
    const/4 v0, 0x3

    aget-object v0, v5, v0

    const/4 v1, 0x4

    const/16 v2, 0x19

    aput v2, v0, v1

    goto :goto_d8
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

    .line 37
    if-nez p1, :cond_5

    .line 63
    :goto_4
    return-void

    :cond_5
    move v5, v4

    .line 41
    :goto_6
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_90

    .line 42
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 43
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

    .line 44
    :goto_25
    sget-object v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 45
    if-nez v2, :cond_42

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_40
    move v2, v4

    .line 43
    goto :goto_25

    .line 49
    :cond_42
    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 50
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_3c

    .line 53
    :cond_52
    sget-object v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->SEEN:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/ManualDefaults;->primed:Z

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->assisted()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 56
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/ManualDefaults;->applyTo(Landroid/content/Context;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_74} :catch_75

    goto :goto_3c

    .line 60
    :catch_75
    move-exception v0

    .line 61
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

    goto/16 :goto_4

    .line 59
    :cond_90
    const/4 v0, 0x1

    :try_start_91
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/ManualDefaults;->primed:Z
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_93} :catch_75

    goto/16 :goto_4
.end method
