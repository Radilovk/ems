.class final Lcom/isaigu/gymapp/wearable/SessionRec;
.super Ljava/lang/Object;
.source "SessionRec.java"


# static fields
.field static final CH:I = 0xa

.field static final EXERCISE_LOAD:I = 0x19


# instance fields
.field ai:Z

.field final ap:Lcom/isaigu/gymapp/wearable/SessionInts;

.field assist:Z

.field auto:Z

.field bandOwner:Z

.field bandRunning:Z

.field bandSent:Z

.field bandSport:I

.field between:Z

.field betweenS:I

.field final ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

.field final chLoad:[D

.field final chPeak:[I

.field curType:I

.field final dis:Lcom/isaigu/gymapp/wearable/SessionInts;

.field end:J

.field final ex:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final exLoad:[D

.field final exUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hr:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final hz:Lcom/isaigu/gymapp/wearable/SessionInts;

.field idle:I

.field final imp:Lcom/isaigu/gymapp/wearable/SessionInts;

.field lastRun:Z

.field leader:Z

.field mainPlanS:I

.field mainType:I

.field modes:I

.field music:Z

.field final off:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final on:Lcom/isaigu/gymapp/wearable/SessionInts;

.field pausedS:I

.field final person:Lorg/json/JSONObject;

.field final ph:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final phz:Lcom/isaigu/gymapp/wearable/SessionInts;

.field planS:I

.field final post:Lcom/isaigu/gymapp/wearable/SessionInts;

.field postLeft:I

.field program:Ljava/lang/String;

.field final ps:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final pv:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final pw:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final run:Lcom/isaigu/gymapp/wearable/SessionInts;

.field segPlanS:I

.field shown:Z

.field final st:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final start:J

.field final user:Lcom/isaigu/gymapp/bean/TrainUser;

.field final userId:J

.field final userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v6, 0xa

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->curType:I

    .line 44
    iput v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    .line 50
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 51
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 53
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 54
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 56
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 57
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 58
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 59
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 60
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 61
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 63
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ex:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 65
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:Ljava/util/TreeSet;

    .line 67
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 69
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 70
    new-array v0, v6, [Lcom/isaigu/gymapp/wearable/SessionInts;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 71
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 72
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    .line 75
    new-array v0, v6, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[D

    .line 78
    new-array v0, v6, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exLoad:[D

    .line 85
    iput v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 92
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    .line 93
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 94
    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    .line 95
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 96
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_d4

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d4

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    :goto_af
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    .line 99
    :try_start_b1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_d7

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_bd} :catch_d9

    .line 102
    :goto_bd
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 103
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    move v0, v2

    .line 104
    :goto_c6
    if-ge v0, v6, :cond_dc

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    new-instance v3, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    aput-object v3, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 96
    :cond_d4
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_af

    :cond_d7
    move-object v0, v1

    .line 99
    goto :goto_bd

    .line 100
    :catch_d9
    move-exception v0

    move-object v0, v1

    goto :goto_bd

    .line 108
    :cond_dc
    iget v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 110
    return-void
.end method

.method private static col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V
    .registers 5

    .prologue
    .line 358
    const-string v0, ",\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p2, p0}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 360
    return-void
.end method

.method private exercises(Ljava/lang/StringBuilder;)V
    .registers 11

    .prologue
    const/16 v8, 0x2c

    const/4 v2, 0x0

    .line 333
    const-string v0, ",\"exs\":{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const/4 v0, 0x1

    .line 335
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v4

    .line 337
    if-eqz v4, :cond_10

    .line 340
    if-nez v1, :cond_2b

    .line 341
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :cond_2b
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\":{\"id\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->idAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\",\"met\":"

    .line 345
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"mus\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 346
    :goto_59
    array-length v1, v4

    if-ge v0, v1, :cond_69

    .line 347
    if-lez v0, :cond_61

    .line 348
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_61
    aget v1, v4, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 352
    :cond_69
    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 353
    goto :goto_10

    .line 354
    :cond_70
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    return-void
.end method

.method private static person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_60

    .line 117
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_1c

    .line 118
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_6c

    const-string v0, "F"

    :goto_19
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_1c
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 121
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    :cond_2b
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_3a

    .line 124
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    :cond_3a
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_4d

    .line 127
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_4d
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_60

    .line 130
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_60
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_6b

    .line 134
    const-string v0, "height"

    iget v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    :cond_6b
    :goto_6b
    return-object v1

    .line 118
    :cond_6c
    const-string v0, "M"
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_6f

    goto :goto_19

    .line 136
    :catch_6f
    move-exception v0

    goto :goto_6b
.end method


# virtual methods
.method activeS()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 257
    move v0, v1

    move v2, v1

    .line 258
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 259
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 258
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 261
    :cond_16
    return v2
.end method

.method deltLevel()I
    .registers 13

    .prologue
    const/4 v7, 0x5

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/16 v4, 0x0

    .line 239
    .line 240
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exLoad:[D

    array-length v6, v1

    const/4 v0, 0x0

    move-wide v2, v4

    :goto_a
    if-ge v0, v6, :cond_15

    aget-wide v8, v1, v0

    .line 241
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 243
    :cond_15
    cmpl-double v0, v2, v4

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exLoad:[D

    aget-wide v0, v0, v7

    cmpl-double v0, v0, v4

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exLoad:[D

    aget-wide v0, v0, v7

    mul-double/2addr v0, v10

    div-double/2addr v0, v2

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_30
    return v0

    :cond_31
    const/4 v0, -0x1

    goto :goto_30
.end method

.method hrAvg()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 274
    const-wide/16 v4, 0x0

    move v0, v1

    move v2, v1

    .line 276
    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 277
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    if-lez v3, :cond_28

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_28

    .line 278
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 276
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 282
    :cond_2b
    if-lez v2, :cond_31

    int-to-long v0, v2

    div-long v0, v4, v0

    long-to-int v1, v0

    :cond_31
    return v1
.end method

.method muscleLevels()[I
    .registers 14

    .prologue
    const/16 v12, 0xa

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 226
    .line 227
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[D

    array-length v9, v8

    move v0, v1

    move-wide v4, v6

    :goto_a
    if-ge v0, v9, :cond_16

    aget-wide v2, v8, v0

    .line 228
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 227
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    goto :goto_a

    .line 230
    :cond_16
    new-array v3, v12, [I

    move v2, v1

    .line 231
    :goto_19
    if-ge v2, v12, :cond_34

    .line 232
    cmpl-double v0, v4, v6

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[D

    aget-wide v8, v0, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    :goto_2c
    aput v0, v3, v2

    .line 231
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_32
    move v0, v1

    .line 232
    goto :goto_2c

    .line 234
    :cond_34
    return-object v3
.end method

.method passiveS()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 266
    move v0, v1

    move v2, v1

    .line 267
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 268
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 267
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 270
    :cond_16
    return v2
.end method

.method resume(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 144
    iput v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    .line 145
    iput v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 146
    iput v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->clear()V

    .line 149
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    .line 150
    iget v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 151
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 153
    :try_start_22
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 155
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    :goto_4c
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 159
    :cond_4e
    :goto_4e
    return-void

    .line 155
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_4c

    .line 157
    :catch_6f
    move-exception v0

    goto :goto_4e
.end method

.method sample(Lcom/isaigu/gymapp/train/model/TrainItem;III)V
    .registers 23

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_121

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_1ce

    move-result-object v2

    .line 171
    :goto_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v9, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_124

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_124

    const/4 v3, 0x1

    .line 173
    :goto_25
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->lastRun:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v9, :cond_127

    if-eqz v3, :cond_127

    const/4 v4, 0x1

    :goto_32
    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v9, :cond_12a

    const/4 v4, 0x1

    :goto_3c
    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v9, :cond_12d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_12d

    const/4 v4, 0x1

    :goto_4e
    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 178
    if-eqz v2, :cond_130

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 179
    :goto_5e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_133

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_6d
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_136

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    :goto_78
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_139

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    :goto_83
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_13c

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    :goto_8e
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_13f

    iget-boolean v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v5, :cond_13f

    const/4 v5, 0x1

    :goto_9c
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_142

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_a7
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_145

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :goto_b2
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 187
    const/4 v6, 0x0

    .line 188
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 189
    if-eqz v2, :cond_148

    iget-object v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v5, :cond_148

    iget-object v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 190
    :goto_c4
    const/4 v7, 0x0

    move v8, v7

    :goto_c6
    const/16 v7, 0xa

    if-ge v8, v7, :cond_150

    .line 191
    if-eqz v10, :cond_1d1

    array-length v7, v10

    if-ge v8, v7, :cond_1d1

    aget-boolean v7, v10, v8

    if-eqz v7, :cond_1d1

    .line 192
    const/4 v7, 0x1

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    move v7, v6

    .line 194
    :goto_d7
    if-eqz v5, :cond_14b

    array-length v6, v5

    if-ge v8, v6, :cond_14b

    aget v6, v5, v8

    .line 195
    :goto_de
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v11, v11, v8

    invoke-virtual {v11, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 196
    if-eqz v9, :cond_11d

    const/4 v11, 0x1

    shl-int/2addr v11, v8

    and-int/2addr v11, v7

    if-nez v11, :cond_11d

    .line 197
    mul-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x64

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v11, v11, v8

    if-le v6, v11, :cond_ff

    .line 199
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aput v6, v11, v8

    .line 201
    :cond_ff
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v11, v11, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v11, :cond_11d

    if-nez v3, :cond_11d

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[D

    aget-wide v12, v11, v8

    int-to-double v14, v6

    if-eqz v2, :cond_14d

    iget v6, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_114
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->forceWeight(I)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v11, v8

    .line 190
    :cond_11d
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    goto :goto_c6

    .line 168
    :cond_121
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 172
    :cond_124
    const/4 v3, 0x0

    goto/16 :goto_25

    .line 174
    :cond_127
    const/4 v4, 0x0

    goto/16 :goto_32

    .line 175
    :cond_12a
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 176
    :cond_12d
    const/4 v4, 0x0

    goto/16 :goto_4e

    .line 178
    :cond_130
    const/4 v4, 0x0

    goto/16 :goto_5e

    .line 180
    :cond_133
    const/4 v5, 0x0

    goto/16 :goto_6d

    .line 181
    :cond_136
    const/4 v5, 0x0

    goto/16 :goto_78

    .line 182
    :cond_139
    const/4 v5, 0x0

    goto/16 :goto_83

    .line 183
    :cond_13c
    const/4 v5, 0x0

    goto/16 :goto_8e

    .line 184
    :cond_13f
    const/4 v5, 0x0

    goto/16 :goto_9c

    .line 185
    :cond_142
    const/4 v5, 0x0

    goto/16 :goto_a7

    .line 186
    :cond_145
    const/4 v5, 0x0

    goto/16 :goto_b2

    .line 189
    :cond_148
    const/4 v5, 0x0

    goto/16 :goto_c4

    .line 194
    :cond_14b
    const/4 v6, 0x0

    goto :goto_de

    .line 204
    :cond_14d
    const/16 v6, 0x55

    goto :goto_114

    .line 208
    :cond_150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 210
    if-eqz v9, :cond_1c6

    if-nez v3, :cond_1c6

    if-ltz p4, :cond_1c6

    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v2

    .line 211
    :goto_16a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ex:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_1c8

    add-int/lit8 v3, p4, 0x1

    :goto_172
    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 212
    if-eqz v2, :cond_1cd

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:Ljava/util/TreeSet;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v3, :cond_1ca

    const/16 v3, 0x64

    .line 215
    :goto_18c
    const/4 v4, 0x0

    :goto_18d
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1cd

    array-length v5, v2

    if-ge v4, v5, :cond_1cd

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->exLoad:[D

    aget-wide v8, v5, v4

    aget v7, v2, v4

    mul-int/lit8 v7, v7, 0x19

    mul-int/2addr v7, v3

    int-to-double v10, v7

    const-wide v12, 0x40c3880000000000L    # 10000.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v5, v4

    .line 217
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    and-int/2addr v5, v6

    if-nez v5, :cond_1c3

    .line 218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[D

    aget-wide v8, v5, v4

    aget v7, v2, v4

    mul-int/lit8 v7, v7, 0x19

    mul-int/2addr v7, v3

    int-to-double v10, v7

    const-wide v12, 0x40c3880000000000L    # 10000.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v5, v4

    .line 215
    :cond_1c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_18d

    .line 210
    :cond_1c6
    const/4 v2, 0x0

    goto :goto_16a

    .line 211
    :cond_1c8
    const/4 v3, 0x0

    goto :goto_172

    .line 214
    :cond_1ca
    const/16 v3, 0x1e

    goto :goto_18c

    .line 222
    :cond_1cd
    return-void

    .line 169
    :catch_1ce
    move-exception v3

    goto/16 :goto_f

    :cond_1d1
    move v7, v6

    goto/16 :goto_d7
.end method

.method sex()Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_11

    const-string v0, "M"

    .line 252
    :goto_10
    return-object v0

    .line 250
    :cond_11
    const-string v0, "F"
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 251
    :catch_14
    move-exception v0

    .line 252
    const-string v0, "F"

    goto :goto_10
.end method

.method summary()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x0

    .line 363
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 364
    const-string v0, "id"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 365
    const-string v0, "userId"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 366
    const-string v3, "name"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_1e
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v0, "start"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 368
    const-string v0, "end"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 369
    const-string v0, "durS"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    const-string v0, "activeS"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    const-string v0, "passiveS"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->passiveS()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v3, "program"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    :goto_5d
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v0, "music"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 375
    const-string v0, "planS"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v0, "modes"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    const-string v3, "hasHr"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v0

    if-lez v0, :cond_a2

    const/4 v0, 0x1

    :goto_7e
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 378
    const-string v0, "hrAvg"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 380
    :goto_90
    if-ge v0, v6, :cond_a4

    .line 381
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 366
    :cond_9c
    const-string v0, ""

    goto :goto_1e

    .line 373
    :cond_9f
    const-string v0, ""

    goto :goto_5d

    :cond_a2
    move v0, v1

    .line 377
    goto :goto_7e

    .line 383
    :cond_a4
    const-string v0, "chPeak"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 385
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v3

    .line 386
    :goto_b2
    if-ge v1, v6, :cond_bc

    .line 387
    aget v4, v3, v1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 389
    :cond_bc
    const-string v1, "mus"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 391
    const-string v1, "owner"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 392
    const-string v1, "sent"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 393
    const-string v1, "sport"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    const-string v1, "band"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    return-object v2
.end method

.method toJson(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit16 v2, v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    :try_start_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->summary()Lorg/json/JSONObject;

    move-result-object v2

    .line 293
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    if-lez p1, :cond_2a

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_2a

    .line 295
    const-string v4, "restHr"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    :cond_2a
    const-string v4, "person"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3d} :catch_ca

    .line 303
    :goto_3d
    const-string v2, "run"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 304
    const-string v2, "hr"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 305
    const-string v2, "st"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 306
    const-string v2, "hz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 307
    const-string v2, "pw"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 308
    const-string v2, "on"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 309
    const-string v2, "off"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 310
    const-string v2, "ap"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 311
    const-string v2, "ps"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 312
    const-string v2, "phz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 313
    const-string v2, "dis"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 314
    const-string v2, "ph"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 315
    const-string v2, "ex"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ex:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 316
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/SessionRec;->exercises(Ljava/lang/StringBuilder;)V

    .line 317
    const-string v2, "imp"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 318
    const-string v2, "pv"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 319
    const-string v2, "post"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 320
    const-string v2, ",\"ch\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_b5
    const/16 v2, 0xa

    if-ge v0, v2, :cond_d8

    .line 322
    if-lez v0, :cond_c0

    .line 323
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :cond_c0
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 300
    :catch_ca
    move-exception v2

    .line 301
    const-string v2, "{\"id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 327
    :cond_d8
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    if-eqz v0, :cond_7

    const-string v0, "auto"

    :goto_6
    return-object v0

    :cond_7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    if-eqz v0, :cond_e

    const-string v0, "ai"

    goto :goto_6

    :cond_e
    const-string v0, "program"

    goto :goto_6
.end method
