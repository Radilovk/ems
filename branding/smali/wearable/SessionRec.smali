.class final Lcom/isaigu/gymapp/wearable/SessionRec;
.super Ljava/lang/Object;
.source "SessionRec.java"


# static fields
.field static final CH:I = 0xa


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

    .line 81
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

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 64
    new-array v0, v6, [Lcom/isaigu/gymapp/wearable/SessionInts;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 65
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 66
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    .line 68
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    .line 75
    iput v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 82
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    .line 83
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 84
    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    .line 85
    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 86
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_bb

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bb

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    :goto_96
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    .line 89
    :try_start_98
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_be

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_a4} :catch_c0

    .line 92
    :goto_a4
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 93
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    move v0, v2

    .line 94
    :goto_ad
    if-ge v0, v6, :cond_c3

    .line 95
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    new-instance v3, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    aput-object v3, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 86
    :cond_bb
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_96

    :cond_be
    move-object v0, v1

    .line 89
    goto :goto_a4

    .line 90
    :catch_c0
    move-exception v0

    move-object v0, v1

    goto :goto_a4

    .line 98
    :cond_c3
    iget v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 99
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->segPlanS:I

    .line 100
    return-void
.end method

.method private static col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V
    .registers 5

    .prologue
    .line 261
    const-string v0, ",\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p2, p0}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 263
    return-void
.end method

.method private static person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_60

    .line 107
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_1c

    .line 108
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_6c

    const-string v0, "F"

    :goto_19
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_1c
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 111
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    :cond_2b
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_3a

    .line 114
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 116
    :cond_3a
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_4d

    .line 117
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_4d
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_60

    .line 120
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_60
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_6b

    .line 124
    const-string v0, "height"

    iget v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    :cond_6b
    :goto_6b
    return-object v1

    .line 108
    :cond_6c
    const-string v0, "M"
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_6f

    goto :goto_19

    .line 126
    :catch_6f
    move-exception v0

    goto :goto_6b
.end method


# virtual methods
.method activeS()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 198
    move v0, v1

    move v2, v1

    .line 199
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 200
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 199
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 202
    :cond_16
    return v2
.end method

.method hrAvg()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 206
    const-wide/16 v4, 0x0

    move v0, v1

    move v2, v1

    .line 208
    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 209
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    if-lez v3, :cond_28

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_28

    .line 210
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 211
    add-int/lit8 v2, v2, 0x1

    .line 208
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 214
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

    .line 176
    .line 177
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    array-length v9, v8

    move v0, v1

    move-wide v4, v6

    :goto_a
    if-ge v0, v9, :cond_16

    aget-wide v2, v8, v0

    .line 178
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 177
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    goto :goto_a

    .line 180
    :cond_16
    new-array v3, v12, [I

    move v2, v1

    .line 181
    :goto_19
    if-ge v2, v12, :cond_36

    .line 182
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

    .line 181
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_34
    move v0, v1

    .line 182
    goto :goto_2e

    .line 184
    :cond_36
    return-object v3
.end method

.method sample(Lcom/isaigu/gymapp/train/model/TrainItem;II)V
    .registers 16

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 134
    :try_start_1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    if-eqz v1, :cond_cf

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_fd

    move-result-object v0

    .line 137
    :goto_f
    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 138
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->lastRun:Z

    .line 139
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v5, :cond_d2

    const/4 v1, 0x1

    :goto_1a
    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 140
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v5, :cond_d5

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_d5

    const/4 v1, 0x1

    :goto_28
    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 141
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, p2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 142
    if-eqz v0, :cond_d8

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 143
    :goto_34
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 144
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_db

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_3f
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 145
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_de

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    :goto_48
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 146
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_e1

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    :goto_51
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 147
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_e4

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    :goto_5a
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 148
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_e7

    iget-boolean v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_e7

    const/4 v2, 0x1

    :goto_66
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 149
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_ea

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_6f
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 150
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_ec

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :goto_78
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 151
    const/4 v2, 0x0

    .line 152
    iget-object v6, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 153
    if-eqz v0, :cond_ee

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v3, :cond_ee

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 154
    :goto_88
    const/4 v3, 0x0

    move v4, v3

    :goto_8a
    const/16 v3, 0xa

    if-ge v4, v3, :cond_f2

    .line 155
    if-eqz v6, :cond_100

    array-length v3, v6

    if-ge v4, v3, :cond_100

    aget-boolean v3, v6, v4

    if-eqz v3, :cond_100

    .line 156
    const/4 v3, 0x1

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    move v3, v2

    .line 158
    :goto_9b
    if-eqz v0, :cond_f0

    array-length v2, v0

    if-ge v4, v2, :cond_f0

    aget v2, v0, v4

    .line 159
    :goto_a2
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v7, v7, v4

    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 160
    if-eqz v5, :cond_cb

    const/4 v7, 0x1

    shl-int/2addr v7, v4

    and-int/2addr v7, v3

    if-nez v7, :cond_cb

    .line 161
    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    .line 162
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v7, v7, v4

    if-le v2, v7, :cond_bd

    .line 163
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aput v2, v7, v4

    .line 165
    :cond_bd
    iget-object v7, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v7, v7, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v7, :cond_cb

    .line 166
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chLoad:[J

    aget-wide v8, v7, v4

    int-to-long v10, v2

    add-long/2addr v8, v10

    aput-wide v8, v7, v4

    .line 154
    :cond_cb
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_8a

    .line 134
    :cond_cf
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 139
    :cond_d2
    const/4 v1, 0x0

    goto/16 :goto_1a

    .line 140
    :cond_d5
    const/4 v1, 0x0

    goto/16 :goto_28

    .line 142
    :cond_d8
    const/4 v1, 0x0

    goto/16 :goto_34

    .line 144
    :cond_db
    const/4 v2, 0x0

    goto/16 :goto_3f

    .line 145
    :cond_de
    const/4 v2, 0x0

    goto/16 :goto_48

    .line 146
    :cond_e1
    const/4 v2, 0x0

    goto/16 :goto_51

    .line 147
    :cond_e4
    const/4 v2, 0x0

    goto/16 :goto_5a

    .line 148
    :cond_e7
    const/4 v2, 0x0

    goto/16 :goto_66

    .line 149
    :cond_ea
    const/4 v2, 0x0

    goto :goto_6f

    .line 150
    :cond_ec
    const/4 v2, 0x0

    goto :goto_78

    .line 153
    :cond_ee
    const/4 v0, 0x0

    goto :goto_88

    .line 158
    :cond_f0
    const/4 v2, 0x0

    goto :goto_a2

    .line 170
    :cond_f2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v0, p3}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 172
    return-void

    .line 135
    :catch_fd
    move-exception v1

    goto/16 :goto_f

    :cond_100
    move v3, v2

    goto :goto_9b
.end method

.method sex()Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_11

    const-string v0, "M"

    .line 193
    :goto_10
    return-object v0

    .line 191
    :cond_11
    const-string v0, "F"
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 192
    :catch_14
    move-exception v0

    .line 193
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

    .line 266
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 267
    const-string v0, "id"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 268
    const-string v0, "userId"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 269
    const-string v3, "name"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_1e
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "start"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 271
    const-string v0, "end"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    const-string v0, "durS"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    const-string v0, "activeS"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v3, "program"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    :goto_54
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "music"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 277
    const-string v0, "planS"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v0, "modes"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 279
    const-string v3, "hasHr"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v0

    if-lez v0, :cond_99

    const/4 v0, 0x1

    :goto_75
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 280
    const-string v0, "hrAvg"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 282
    :goto_87
    if-ge v0, v6, :cond_9b

    .line 283
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 269
    :cond_93
    const-string v0, ""

    goto :goto_1e

    .line 275
    :cond_96
    const-string v0, ""

    goto :goto_54

    :cond_99
    move v0, v1

    .line 279
    goto :goto_75

    .line 285
    :cond_9b
    const-string v0, "chPeak"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->muscleLevels()[I

    move-result-object v3

    .line 288
    :goto_a9
    if-ge v1, v6, :cond_b3

    .line 289
    aget v4, v3, v1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 291
    :cond_b3
    const-string v1, "mus"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 293
    const-string v1, "owner"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 294
    const-string v1, "sent"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 295
    const-string v1, "sport"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    const-string v1, "band"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    return-object v2
.end method

.method toJson(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit16 v2, v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    :try_start_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->summary()Lorg/json/JSONObject;

    move-result-object v2

    .line 225
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    if-lez p1, :cond_2a

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_2a

    .line 227
    const-string v4, "restHr"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    :cond_2a
    const-string v4, "person"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3d} :catch_b9

    .line 235
    :goto_3d
    const-string v2, "run"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 236
    const-string v2, "hr"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 237
    const-string v2, "st"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 238
    const-string v2, "hz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 239
    const-string v2, "pw"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 240
    const-string v2, "on"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 241
    const-string v2, "off"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 242
    const-string v2, "ap"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 243
    const-string v2, "ps"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 244
    const-string v2, "phz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 245
    const-string v2, "dis"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 246
    const-string v2, "ph"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 247
    const-string v2, "imp"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 248
    const-string v2, "post"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 249
    const-string v2, ",\"ch\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :goto_a4
    const/16 v2, 0xa

    if-ge v0, v2, :cond_c7

    .line 251
    if-lez v0, :cond_af

    .line 252
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_af
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 232
    :catch_b9
    move-exception v2

    .line 233
    const-string v2, "{\"id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 256
    :cond_c7
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
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
