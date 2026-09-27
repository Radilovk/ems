.class final Lcom/isaigu/gymapp/wearable/SessionRec;
.super Ljava/lang/Object;
.source "SessionRec.java"


# static fields
.field static final CH:I = 0xa


# instance fields
.field ai:Z

.field final ap:Lcom/isaigu/gymapp/wearable/SessionInts;

.field bandOwner:Z

.field bandRunning:Z

.field bandSent:Z

.field bandSport:I

.field final ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

.field final chPeak:[I

.field final dis:Lcom/isaigu/gymapp/wearable/SessionInts;

.field end:J

.field final hr:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final hz:Lcom/isaigu/gymapp/wearable/SessionInts;

.field idle:I

.field final imp:Lcom/isaigu/gymapp/wearable/SessionInts;

.field lastRun:Z

.field leader:Z

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

.field final program:Ljava/lang/String;

.field final ps:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final pw:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final run:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final st:Lcom/isaigu/gymapp/wearable/SessionInts;

.field final start:J

.field final userId:J

.field final userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v6, 0xa

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 34
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 35
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 36
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 37
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 38
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 39
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 41
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 42
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 43
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 47
    new-array v0, v6, [Lcom/isaigu/gymapp/wearable/SessionInts;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 49
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->postLeft:I

    .line 61
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    .line 62
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 63
    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    .line 64
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_b1

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b1

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    :goto_8c
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    .line 67
    :try_start_8e
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_9a} :catch_b6

    .line 70
    :goto_9a
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    .line 71
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    move v0, v2

    .line 72
    :goto_a3
    if-ge v0, v6, :cond_b9

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    new-instance v3, Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;-><init>()V

    aput-object v3, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 64
    :cond_b1
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto :goto_8c

    :cond_b4
    move-object v0, v1

    .line 67
    goto :goto_9a

    .line 68
    :catch_b6
    move-exception v0

    move-object v0, v1

    goto :goto_9a

    .line 76
    :cond_b9
    iget v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    .line 77
    return-void
.end method

.method private static col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V
    .registers 5

    .prologue
    .line 212
    const-string v0, ",\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p2, p0}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 214
    return-void
.end method

.method private static person(Lcom/isaigu/gymapp/bean/TrainUser;)Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_60

    .line 84
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_1c

    .line 85
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_6c

    const-string v0, "F"

    :goto_19
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_1c
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 88
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    :cond_2b
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_3a

    .line 91
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 93
    :cond_3a
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_4d

    .line 94
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_4d
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_60

    .line 97
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_60
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_6b

    .line 101
    const-string v0, "height"

    iget v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    :cond_6b
    :goto_6b
    return-object v1

    .line 85
    :cond_6c
    const-string v0, "M"
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_6f

    goto :goto_19

    .line 103
    :catch_6f
    move-exception v0

    goto :goto_6b
.end method


# virtual methods
.method activeS()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 149
    move v0, v1

    move v2, v1

    .line 150
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 151
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 150
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 153
    :cond_16
    return v2
.end method

.method hrAvg()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 157
    const-wide/16 v4, 0x0

    move v0, v1

    move v2, v1

    .line 159
    :goto_5
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 160
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    if-lez v3, :cond_28

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_28

    .line 161
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 159
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 165
    :cond_2b
    if-lez v2, :cond_31

    int-to-long v0, v2

    div-long v0, v4, v0

    long-to-int v1, v0

    :cond_31
    return v1
.end method

.method sample(Lcom/isaigu/gymapp/train/model/TrainItem;II)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 109
    .line 111
    :try_start_3
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_c5

    move-result-object v0

    .line 114
    :goto_11
    iget-object v2, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v7, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 115
    iput-boolean v7, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->lastRun:Z

    .line 116
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v7, :cond_c9

    move v2, v3

    :goto_1c
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 117
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v7, :cond_cc

    iget-object v2, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v2, :cond_cc

    move v2, v3

    :goto_2a
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 118
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 119
    if-eqz v0, :cond_cf

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 120
    :goto_36
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 121
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_d2

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_41
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 122
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_d5

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    :goto_4a
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 123
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_d8

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    :goto_53
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 124
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_db

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    :goto_5c
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 125
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_dd

    iget-boolean v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v5, :cond_dd

    move v5, v3

    :goto_68
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 126
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_df

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_71
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 127
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    if-eqz v0, :cond_e1

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :goto_7a
    invoke-virtual {v6, v5}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 129
    iget-object v8, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 130
    if-eqz v0, :cond_89

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v5, :cond_89

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    :cond_89
    move v6, v4

    move v0, v4

    .line 131
    :goto_8b
    const/16 v5, 0xa

    if-ge v6, v5, :cond_e5

    .line 132
    if-eqz v8, :cond_f0

    array-length v5, v8

    if-ge v6, v5, :cond_f0

    aget-boolean v5, v8, v6

    if-eqz v5, :cond_f0

    .line 133
    shl-int v5, v3, v6

    or-int/2addr v0, v5

    move v5, v0

    .line 135
    :goto_9c
    if-eqz v1, :cond_e3

    array-length v0, v1

    if-ge v6, v0, :cond_e3

    aget v0, v1, v6

    .line 136
    :goto_a3
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v9, v9, v6

    invoke-virtual {v9, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 137
    if-eqz v7, :cond_be

    shl-int v9, v3, v6

    and-int/2addr v9, v5

    if-nez v9, :cond_be

    .line 138
    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    .line 139
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v9, v9, v6

    if-le v0, v9, :cond_be

    .line 140
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aput v0, v9, v6

    .line 131
    :cond_be
    add-int/lit8 v6, v6, 0x1

    move v0, v5

    goto :goto_8b

    :cond_c2
    move-object v0, v1

    .line 111
    goto/16 :goto_11

    .line 112
    :catch_c5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_11

    :cond_c9
    move v2, v4

    .line 116
    goto/16 :goto_1c

    :cond_cc
    move v2, v4

    .line 117
    goto/16 :goto_2a

    :cond_cf
    move v2, v4

    .line 119
    goto/16 :goto_36

    :cond_d2
    move v5, v4

    .line 121
    goto/16 :goto_41

    :cond_d5
    move v5, v4

    .line 122
    goto/16 :goto_4a

    :cond_d8
    move v5, v4

    .line 123
    goto/16 :goto_53

    :cond_db
    move v5, v4

    .line 124
    goto :goto_5c

    :cond_dd
    move v5, v4

    .line 125
    goto :goto_68

    :cond_df
    move v5, v4

    .line 126
    goto :goto_71

    :cond_e1
    move v5, v4

    .line 127
    goto :goto_7a

    :cond_e3
    move v0, v4

    .line 135
    goto :goto_a3

    .line 144
    :cond_e5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v0, p3}, Lcom/isaigu/gymapp/wearable/SessionInts;->add(I)V

    .line 146
    return-void

    :cond_f0
    move v5, v0

    goto :goto_9c
.end method

.method summary()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v0, "id"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 219
    const-string v0, "userId"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 220
    const-string v3, "name"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userName:Ljava/lang/String;

    :goto_1c
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v0, "start"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    const-string v0, "end"

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->end:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    const-string v0, "durS"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v0, "activeS"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "program"

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    :goto_52
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v0, "music"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->music:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 228
    const-string v0, "planS"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v3, "hasHr"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v0

    if-lez v0, :cond_91

    const/4 v0, 0x1

    :goto_6c
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    const-string v0, "hrAvg"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->hrAvg()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 232
    :goto_7d
    const/16 v3, 0xa

    if-ge v1, v3, :cond_93

    .line 233
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->chPeak:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 220
    :cond_8b
    const-string v0, ""

    goto :goto_1c

    .line 226
    :cond_8e
    const-string v0, ""

    goto :goto_52

    :cond_91
    move v0, v1

    .line 229
    goto :goto_6c

    .line 235
    :cond_93
    const-string v1, "chPeak"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 237
    const-string v1, "owner"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    const-string v1, "sent"

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 239
    const-string v1, "sport"

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v1, "band"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    return-object v2
.end method

.method toJson(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/lit16 v2, v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    :try_start_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/SessionRec;->summary()Lorg/json/JSONObject;

    move-result-object v2

    .line 176
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->person:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    if-lez p1, :cond_2a

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v4, :cond_2a

    .line 178
    const-string v4, "restHr"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    :cond_2a
    const-string v4, "person"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3d} :catch_b9

    .line 186
    :goto_3d
    const-string v2, "run"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 187
    const-string v2, "hr"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hr:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 188
    const-string v2, "st"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 189
    const-string v2, "hz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 190
    const-string v2, "pw"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 191
    const-string v2, "on"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 192
    const-string v2, "off"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 193
    const-string v2, "ap"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 194
    const-string v2, "ps"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 195
    const-string v2, "phz"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 196
    const-string v2, "dis"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->dis:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 197
    const-string v2, "ph"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ph:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 198
    const-string v2, "imp"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->imp:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 199
    const-string v2, "post"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->post:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionRec;->col(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/SessionInts;)V

    .line 200
    const-string v2, ",\"ch\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :goto_a4
    const/16 v2, 0xa

    if-ge v0, v2, :cond_c7

    .line 202
    if-lez v0, :cond_af

    .line 203
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_af
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->json(Ljava/lang/StringBuilder;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 183
    :catch_b9
    move-exception v2

    .line 184
    const-string v2, "{\"id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_3d

    .line 207
    :cond_c7
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    if-eqz v0, :cond_7

    const-string v0, "ai"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "program"

    goto :goto_6
.end method
