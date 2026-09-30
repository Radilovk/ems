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

.field final chLoad:[J

.field final chPeak:[I

.field curType:I

.field final dis:Lcom/isaigu/gymapp/wearable/SessionInts;

.field end:J

.field final ex:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final exUsed:[Z

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

    .line 88
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
    const/16 v0, 0x40

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:[Z

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
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    .line 82
    iput v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 89
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    .line 90
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 91
    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    .line 92
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 93
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_cf

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_cf

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    :goto_aa
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    .line 96
    :try_start_ac
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_b8} :catch_d4

    .line 99
    :goto_b8
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 100
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    move v0, v2

    .line 101
    :goto_c1
    if-ge v0, v6, :cond_d7

    .line 102
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    new-instance v3, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    aput-object v3, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 93
    :cond_cf
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_aa

    :cond_d2
    move-object v0, v1

    .line 96
    goto :goto_b8

    .line 97
    :catch_d4
    move-exception v0

    move-object v0, v1

    goto :goto_b8

    .line 105
    :cond_d7
    iget v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 106
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 107
    return-void
.end method

.method private static col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V
    .registers 5

    .prologue
    .line 345
    const-string v0, ",\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p2, p0}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 347
    return-void
.end method

.method private exercises(Ljava/lang/StringBuilder;)V
    .registers 9

    .prologue
    const/16 v6, 0x2c

    const/4 v1, 0x0

    .line 320
    const-string v0, ",\"exs\":{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/4 v2, 0x1

    move v0, v1

    .line 322
    :goto_a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_6a

    .line 323
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1e

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v3

    .line 324
    :goto_19
    if-nez v3, :cond_20

    .line 322
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 323
    :cond_1e
    const/4 v3, 0x0

    goto :goto_19

    .line 327
    :cond_20
    if-nez v2, :cond_25

    .line 328
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_25
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\":{\"id\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->idAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\",\"met\":"

    .line 332
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",\"mus\":["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 333
    :goto_53
    array-length v4, v3

    if-ge v2, v4, :cond_63

    .line 334
    if-lez v2, :cond_5b

    .line 335
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    :cond_5b
    aget v4, v3, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 339
    :cond_63
    const-string v2, "]}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1b

    .line 341
    :cond_6a
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    return-void
.end method

.method private static person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_60

    .line 114
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_1c

    .line 115
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_6c

    const-string v0, "F"

    :goto_19
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_1c
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 118
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    :cond_2b
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_3a

    .line 121
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 123
    :cond_3a
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_4d

    .line 124
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_4d
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_60

    .line 127
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_60
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_6b

    .line 131
    const-string v0, "height"

    iget v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    :cond_6b
    :goto_6b
    return-object v1

    .line 115
    :cond_6c
    const-string v0, "M"
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_6f

    goto :goto_19

    .line 133
    :catch_6f
    move-exception v0

    goto :goto_6b
.end method


# virtual methods
.method activeS()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 244
    move v0, v1

    move v2, v1

    .line 245
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 246
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 245
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 248
    :cond_16
    return v2
.end method

.method hrAvg()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 261
    const-wide/16 v4, 0x0

    move v0, v1

    move v2, v1

    .line 263
    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 264
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    if-lez v3, :cond_28

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_28

    .line 265
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 263
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 269
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
    const-wide/16 v6, 0x0

    const/16 v12, 0xa

    const/4 v1, 0x0

    .line 222
    .line 223
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    array-length v9, v8

    move v0, v1

    move-wide v4, v6

    :goto_a
    if-ge v0, v9, :cond_16

    aget-wide v2, v8, v0

    .line 224
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 223
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    goto :goto_a

    .line 226
    :cond_16
    new-array v3, v12, [I

    move v2, v1

    .line 227
    :goto_19
    if-ge v2, v12, :cond_36

    .line 228
    cmp-long v0, v4, v6

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    aget-wide v8, v0, v2

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    long-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    :goto_2e
    aput v0, v3, v2

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_34
    move v0, v1

    .line 228
    goto :goto_2e

    .line 230
    :cond_36
    return-object v3
.end method

.method passiveS()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 253
    move v0, v1

    move v2, v1

    .line 254
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 255
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 254
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 257
    :cond_16
    return v2
.end method

.method resume(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->between:Z

    .line 141
    iput v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->betweenS:I

    .line 142
    iput v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->idle:I

    .line 143
    iput v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pausedS:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->clear()V

    .line 146
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->shown:Z

    .line 147
    iget v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 148
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 150
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

    .line 151
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 152
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    :goto_4c
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 156
    :cond_4e
    :goto_4e
    return-void

    .line 152
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

    .line 154
    :catch_6f
    move-exception v0

    goto :goto_4e
.end method

.method sample(Lcom/isaigu/gymapp/train/model/TrainItem;III)V
    .registers 21

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 165
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_117

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_1ac

    move-result-object v2

    .line 168
    :goto_f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v8, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-eqz v3, :cond_11a

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11a

    const/4 v3, 0x1

    .line 170
    :goto_25
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->lastRun:Z

    .line 171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v8, :cond_11d

    if-eqz v3, :cond_11d

    const/4 v4, 0x1

    :goto_32
    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v8, :cond_120

    const/4 v4, 0x1

    :goto_3c
    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v8, :cond_123

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_123

    const/4 v4, 0x1

    :goto_4e
    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 175
    if-eqz v2, :cond_126

    iget v4, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 176
    :goto_5e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v5, v4}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_129

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_6d
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_12c

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    :goto_78
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_12f

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    :goto_83
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_132

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    :goto_8e
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_135

    iget-boolean v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v5, :cond_135

    const/4 v5, 0x1

    :goto_9c
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_138

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_a7
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_13b

    iget v5, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :goto_b2
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 184
    const/4 v5, 0x0

    .line 185
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 186
    if-eqz v2, :cond_13e

    iget-object v6, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v6, :cond_13e

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 187
    :goto_c4
    const/4 v6, 0x0

    move v7, v6

    :goto_c6
    const/16 v6, 0xa

    if-ge v7, v6, :cond_142

    .line 188
    if-eqz v9, :cond_1af

    array-length v6, v9

    if-ge v7, v6, :cond_1af

    aget-boolean v6, v9, v7

    if-eqz v6, :cond_1af

    .line 189
    const/4 v6, 0x1

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    move v6, v5

    .line 191
    :goto_d7
    if-eqz v2, :cond_140

    array-length v5, v2

    if-ge v7, v5, :cond_140

    aget v5, v2, v7

    .line 192
    :goto_de
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v10, v10, v7

    invoke-virtual {v10, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 193
    if-eqz v8, :cond_113

    const/4 v10, 0x1

    shl-int/2addr v10, v7

    and-int/2addr v10, v6

    if-nez v10, :cond_113

    .line 194
    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x64

    .line 195
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v10, v10, v7

    if-le v5, v10, :cond_ff

    .line 196
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aput v5, v10, v7

    .line 198
    :cond_ff
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v10, v10, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v10, :cond_113

    if-nez v3, :cond_113

    .line 199
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    aget-wide v12, v10, v7

    int-to-long v14, v5

    add-long/2addr v12, v14

    aput-wide v12, v10, v7

    .line 187
    :cond_113
    add-int/lit8 v7, v7, 0x1

    move v5, v6

    goto :goto_c6

    .line 165
    :cond_117
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 169
    :cond_11a
    const/4 v3, 0x0

    goto/16 :goto_25

    .line 171
    :cond_11d
    const/4 v4, 0x0

    goto/16 :goto_32

    .line 172
    :cond_120
    const/4 v4, 0x0

    goto/16 :goto_3c

    .line 173
    :cond_123
    const/4 v4, 0x0

    goto/16 :goto_4e

    .line 175
    :cond_126
    const/4 v4, 0x0

    goto/16 :goto_5e

    .line 177
    :cond_129
    const/4 v5, 0x0

    goto/16 :goto_6d

    .line 178
    :cond_12c
    const/4 v5, 0x0

    goto/16 :goto_78

    .line 179
    :cond_12f
    const/4 v5, 0x0

    goto/16 :goto_83

    .line 180
    :cond_132
    const/4 v5, 0x0

    goto/16 :goto_8e

    .line 181
    :cond_135
    const/4 v5, 0x0

    goto/16 :goto_9c

    .line 182
    :cond_138
    const/4 v5, 0x0

    goto/16 :goto_a7

    .line 183
    :cond_13b
    const/4 v5, 0x0

    goto/16 :goto_b2

    .line 186
    :cond_13e
    const/4 v2, 0x0

    goto :goto_c4

    .line 191
    :cond_140
    const/4 v5, 0x0

    goto :goto_de

    .line 203
    :cond_142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 205
    if-eqz v8, :cond_1a4

    if-nez v3, :cond_1a4

    if-ltz p4, :cond_1a4

    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v2

    .line 206
    :goto_15c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->ex:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v2, :cond_1a6

    add-int/lit8 v3, p4, 0x1

    :goto_164
    invoke-virtual {v4, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 207
    if-eqz v2, :cond_1ab

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:[Z

    array-length v3, v3

    move/from16 v0, p4

    if-ge v0, v3, :cond_179

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->exUsed:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, p4

    .line 211
    :cond_179
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v3, :cond_1a8

    const/16 v3, 0x64

    .line 212
    :goto_183
    const/4 v4, 0x0

    :goto_184
    const/16 v6, 0xa

    if-ge v4, v6, :cond_1ab

    array-length v6, v2

    if-ge v4, v6, :cond_1ab

    .line 213
    const/4 v6, 0x1

    shl-int/2addr v6, v4

    and-int/2addr v6, v5

    if-nez v6, :cond_1a1

    .line 214
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    aget-wide v8, v6, v4

    aget v7, v2, v4

    mul-int/lit8 v7, v7, 0x19

    mul-int/2addr v7, v3

    div-int/lit16 v7, v7, 0x2710

    int-to-long v10, v7

    add-long/2addr v8, v10

    aput-wide v8, v6, v4

    .line 212
    :cond_1a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_184

    .line 205
    :cond_1a4
    const/4 v2, 0x0

    goto :goto_15c

    .line 206
    :cond_1a6
    const/4 v3, 0x0

    goto :goto_164

    .line 211
    :cond_1a8
    const/16 v3, 0x1e

    goto :goto_183

    .line 218
    :cond_1ab
    return-void

    .line 166
    :catch_1ac
    move-exception v3

    goto/16 :goto_f

    :cond_1af
    move v6, v5

    goto/16 :goto_d7
.end method

.method sex()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_11

    const-string v0, "M"

    .line 239
    :goto_10
    return-object v0

    .line 237
    :cond_11
    const-string v0, "F"
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 238
    :catch_14
    move-exception v0

    .line 239
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

    .line 350
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 351
    const-string v0, "id"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 352
    const-string v0, "userId"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 353
    const-string v3, "name"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_1e
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v0, "start"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 355
    const-string v0, "end"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 356
    const-string v0, "durS"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v0, "activeS"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    const-string v0, "passiveS"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->passiveS()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v3, "program"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    :goto_5d
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v0, "music"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 362
    const-string v0, "planS"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    const-string v0, "modes"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 364
    const-string v3, "hasHr"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v0

    if-lez v0, :cond_a2

    const/4 v0, 0x1

    :goto_7e
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 365
    const-string v0, "hrAvg"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 367
    :goto_90
    if-ge v0, v6, :cond_a4

    .line 368
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 353
    :cond_9c
    const-string v0, ""

    goto :goto_1e

    .line 360
    :cond_9f
    const-string v0, ""

    goto :goto_5d

    :cond_a2
    move v0, v1

    .line 364
    goto :goto_7e

    .line 370
    :cond_a4
    const-string v0, "chPeak"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 372
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v3

    .line 373
    :goto_b2
    if-ge v1, v6, :cond_bc

    .line 374
    aget v4, v3, v1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 376
    :cond_bc
    const-string v1, "mus"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 378
    const-string v1, "owner"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 379
    const-string v1, "sent"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 380
    const-string v1, "sport"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-string v1, "band"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    return-object v2
.end method

.method toJson(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit16 v2, v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    :try_start_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->summary()Lorg/json/JSONObject;

    move-result-object v2

    .line 280
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 281
    if-lez p1, :cond_2a

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_2a

    .line 282
    const-string v4, "restHr"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    :cond_2a
    const-string v4, "person"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3d} :catch_ca

    .line 290
    :goto_3d
    const-string v2, "run"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 291
    const-string v2, "hr"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 292
    const-string v2, "st"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 293
    const-string v2, "hz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 294
    const-string v2, "pw"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 295
    const-string v2, "on"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 296
    const-string v2, "off"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 297
    const-string v2, "ap"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 298
    const-string v2, "ps"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 299
    const-string v2, "phz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 300
    const-string v2, "dis"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 301
    const-string v2, "ph"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 302
    const-string v2, "ex"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ex:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 303
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/SessionRec;->exercises(Ljava/lang/StringBuilder;)V

    .line 304
    const-string v2, "imp"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 305
    const-string v2, "pv"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 306
    const-string v2, "post"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 307
    const-string v2, ",\"ch\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :goto_b5
    const/16 v2, 0xa

    if-ge v0, v2, :cond_d8

    .line 309
    if-lez v0, :cond_c0

    .line 310
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    :cond_c0
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 287
    :catch_ca
    move-exception v2

    .line 288
    const-string v2, "{\"id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 314
    :cond_d8
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
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
