.class public final Lcom/isaigu/gymapp/ai/AiProfile;
.super Ljava/lang/Object;
.source "AiProfile.java"


# static fields
.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"


# instance fields
.field public age:Ljava/lang/Integer;

.field public chMuscle:[D

.field public channelFat:[D

.field public final cond:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final contraindications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fatObese:Z

.field public fatPct:Ljava/lang/Double;

.field public fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public final focus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public heightCm:I

.field public leanKg:D

.field public measured:Z

.field public muscleLow:Z

.field public readiness:D

.field public readinessSeg:I

.field public scaleFocus:Ljava/lang/String;

.field public sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public skeletalKg:D

.field public userId:J

.field public weightKg:Ljava/lang/Double;


# direct methods
.method private constructor <init>()V
    .registers 5

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->readinessSeg:I

    .line 41
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiProfile;->leanKg:D

    .line 42
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiProfile;->skeletalKg:D

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    .line 55
    return-void
.end method

.method static addCsv(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 162
    :cond_20
    return-void
.end method

.method private static appContext()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 249
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 250
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 252
    :goto_1a
    return-object v0

    .line 251
    :catch_1b
    move-exception v0

    move-object v0, v1

    .line 252
    goto :goto_1a
.end method

.method static fitness(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;
    .registers 2

    .prologue
    .line 230
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 233
    :goto_a
    return-object v0

    .line 231
    :cond_b
    const-string v0, "mid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_a

    .line 232
    :cond_16
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_a

    .line 233
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static goal(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 2

    .prologue
    .line 221
    const-string v0, "tone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 226
    :goto_a
    return-object v0

    .line 222
    :cond_b
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 223
    :cond_16
    const-string v0, "massage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 224
    :cond_21
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 225
    :cond_2c
    const-string v0, "cellulite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 226
    :cond_37
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 15

    .prologue
    const/4 v13, 0x3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/16 v12, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_b

    .line 84
    const/4 v0, 0x0

    .line 153
    :goto_a
    return-object v0

    .line 86
    :cond_b
    new-instance v6, Lcom/isaigu/gymapp/ai/AiProfile;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/AiProfile;-><init>()V

    .line 87
    iget-wide v8, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v8, v6, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_22

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v3, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v0, v3, :cond_14f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_20
    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 91
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_38

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->yearsSince(Ljava/util/Date;)I

    move-result v0

    .line 93
    const/16 v3, 0xa

    if-lt v0, v3, :cond_38

    if-gt v0, v12, :cond_38

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    .line 97
    :cond_38
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lt v0, v12, :cond_46

    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    const/16 v3, 0xe6

    if-gt v0, v3, :cond_46

    .line 98
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    iput v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    .line 100
    :cond_46
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5f

    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/high16 v3, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5f

    .line 101
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    .line 103
    :cond_5f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiProfile;->appContext()Landroid/content/Context;

    move-result-object v7

    .line 104
    if-eqz v7, :cond_1c9

    .line 106
    iget-wide v8, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->freshFatPct(Landroid/content/Context;J)D

    move-result-wide v8

    .line 107
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_77

    .line 108
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    .line 110
    :cond_77
    iget-wide v8, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->freshChannelFat(Landroid/content/Context;J)[D

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->channelFat:[D

    .line 111
    iget-wide v8, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->fresh(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v8

    .line 112
    if-eqz v8, :cond_ce

    .line 113
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v3, :cond_153

    move v0, v1

    .line 114
    :goto_8e
    iget v3, v6, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    if-lez v3, :cond_156

    iget v3, v6, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    .line 116
    :goto_94
    iput-boolean v1, v6, Lcom/isaigu/gymapp/ai/AiProfile;->measured:Z

    .line 117
    const-string v9, "lean"

    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, v6, Lcom/isaigu/gymapp/ai/AiProfile;->leanKg:D

    .line 118
    const-string v9, "skel"

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 119
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_177

    :goto_ac
    iput-wide v4, v6, Lcom/isaigu/gymapp/ai/AiProfile;->skeletalKg:D

    .line 120
    if-lt v3, v12, :cond_ce

    .line 121
    invoke-static {v8, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelMuscle(Lorg/json/JSONObject;ZI)[D

    move-result-object v4

    iput-object v4, v6, Lcom/isaigu/gymapp/ai/AiProfile;->chMuscle:[D

    .line 123
    invoke-static {v8, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v5

    .line 124
    iget v4, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    if-nez v4, :cond_183

    move v4, v1

    :goto_bf
    iput-boolean v4, v6, Lcom/isaigu/gymapp/ai/AiProfile;->muscleLow:Z

    .line 125
    iget v4, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    if-ne v4, v13, :cond_186

    move v4, v1

    :goto_c6
    iput-boolean v4, v6, Lcom/isaigu/gymapp/ai/AiProfile;->fatObese:Z

    .line 126
    invoke-static {v8, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->weakFocus(Lorg/json/JSONObject;ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->scaleFocus:Ljava/lang/String;

    .line 129
    :cond_ce
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 130
    invoke-static {v7, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->readinessToday(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_de

    .line 132
    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    iput-wide v4, v6, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    .line 133
    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    iput v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->readinessSeg:I

    .line 135
    :cond_de
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v7, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->freshWeight(Landroid/content/Context;J)D

    move-result-wide v4

    .line 136
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    .line 139
    :cond_f0
    const-string v0, "xems_user_profiles"

    invoke-virtual {v7, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 141
    array-length v4, v3

    if-lt v4, v13, :cond_189

    .line 142
    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiProfile;->goal(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v4

    iput-object v4, v6, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 143
    aget-object v1, v3, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->fitness(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v1

    iput-object v1, v6, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 144
    const/4 v1, 0x2

    aget-object v1, v3, v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_135
    if-ge v2, v3, :cond_189

    aget-object v4, v1, v2

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14c

    .line 146
    iget-object v5, v6, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_135

    .line 89
    :cond_14f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_20

    :cond_153
    move v0, v2

    .line 113
    goto/16 :goto_8e

    .line 115
    :cond_156
    const-string v3, "xems_scale"

    invoke-virtual {v7, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "h"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_94

    .line 119
    :cond_177
    const-string v4, "w"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v10

    goto/16 :goto_ac

    :cond_183
    move v4, v2

    .line 124
    goto/16 :goto_bf

    :cond_186
    move v4, v2

    .line 125
    goto/16 :goto_c6

    .line 150
    :cond_189
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiProfile;->addCsv(Ljava/util/Set;Ljava/lang/String;)V

    .line 151
    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->addCsv(Ljava/util/Set;Ljava/lang/String;)V

    :cond_1c9
    move-object v0, v6

    .line 153
    goto/16 :goto_a
.end method

.method public static of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p0, :cond_d

    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_e

    .line 78
    :cond_d
    :goto_d
    return-object v0

    .line 76
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_d

    .line 77
    :catch_17
    move-exception v1

    goto :goto_d
.end method

.method public static ofItems(Ljava/util/List;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AiProfile;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 59
    if-nez p0, :cond_5

    move-object v0, v2

    .line 68
    :cond_4
    :goto_4
    return-object v0

    .line 62
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 63
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 64
    if-nez v0, :cond_4

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1d
    move-object v0, v2

    .line 68
    goto :goto_4
.end method

.method static yearsSince(Ljava/util/Date;)I
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 238
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 240
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 241
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v2, v1, :cond_22

    .line 242
    add-int/lit8 v0, v0, -0x1

    .line 244
    :cond_22
    return v0
.end method


# virtual methods
.method public applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 7

    .prologue
    .line 171
    if-nez p1, :cond_3

    .line 211
    :cond_2
    return-void

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 177
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 180
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_23

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 183
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_2b

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 186
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_51

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 188
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->values()[Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v2, :cond_51

    aget-object v3, v1, v0

    .line 190
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 191
    iput-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 197
    :cond_51
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    .line 198
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    .line 199
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->leanKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->leanKg:D

    .line 200
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->skeletalKg:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->skeletalKg:D

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->chMuscle:[D

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->chMuscle:[D

    .line 202
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->readiness:D

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->scaleFocus:Ljava/lang/String;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->scaleFocus:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 207
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 189
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method

.method public personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v0

    return-object v0
.end method

.method public toInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .prologue
    .line 215
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    .line 216
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 217
    return-object v0
.end method
