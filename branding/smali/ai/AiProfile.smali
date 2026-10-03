.class public final Lcom/isaigu/gymapp/ai/AiProfile;
.super Ljava/lang/Object;
.source "AiProfile.java"


# static fields
.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"


# instance fields
.field public age:Ljava/lang/Integer;

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

.field public readiness:D

.field public readinessSeg:I

.field public sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public userId:J

.field public weightKg:Ljava/lang/Double;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->readinessSeg:I

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    .line 47
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
    .line 131
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_20

    aget-object v3, v1, v0

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    .line 133
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 136
    :cond_20
    return-void
.end method

.method private static appContext()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 218
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
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

    .line 221
    :goto_1a
    return-object v0

    .line 220
    :catch_1b
    move-exception v0

    move-object v0, v1

    .line 221
    goto :goto_1a
.end method

.method static fitness(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;
    .registers 2

    .prologue
    .line 199
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 202
    :goto_a
    return-object v0

    .line 200
    :cond_b
    const-string v0, "mid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_a

    .line 201
    :cond_16
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_a

    .line 202
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static goal(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 2

    .prologue
    .line 190
    const-string v0, "tone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 195
    :goto_a
    return-object v0

    .line 191
    :cond_b
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 192
    :cond_16
    const-string v0, "massage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 193
    :cond_21
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 194
    :cond_2c
    const-string v0, "cellulite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    goto :goto_a

    .line 195
    :cond_37
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 8

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    .line 75
    if-nez p0, :cond_7

    .line 76
    const/4 v0, 0x0

    .line 127
    :goto_6
    return-object v0

    .line 78
    :cond_7
    new-instance v1, Lcom/isaigu/gymapp/ai/AiProfile;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiProfile;-><init>()V

    .line 79
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_1e

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v3, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v0, v3, :cond_ff

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1c
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 83
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_34

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->yearsSince(Ljava/util/Date;)I

    move-result v0

    .line 85
    const/16 v3, 0xa

    if-lt v0, v3, :cond_34

    if-gt v0, v6, :cond_34

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    .line 89
    :cond_34
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lt v0, v6, :cond_42

    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    const/16 v3, 0xe6

    if-gt v0, v3, :cond_42

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    .line 92
    :cond_42
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5b

    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/high16 v3, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5b

    .line 93
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    .line 95
    :cond_5b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiProfile;->appContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_143

    .line 98
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->freshFatPct(Landroid/content/Context;J)D

    move-result-wide v4

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_73

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    .line 102
    :cond_73
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->freshChannelFat(Landroid/content/Context;J)[D

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->channelFat:[D

    .line 103
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 104
    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->readinessToday(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_8b

    .line 106
    iget-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    iput-wide v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->readiness:D

    .line 107
    iget v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    iput v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->readinessSeg:I

    .line 109
    :cond_8b
    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->freshWeight(Landroid/content/Context;J)D

    move-result-wide v4

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 111
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    .line 113
    :cond_9d
    const-string v3, "xems_user_profiles"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\|"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 115
    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_103

    .line 116
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiProfile;->goal(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v4

    iput-object v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 117
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiProfile;->fitness(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v4

    iput-object v4, v1, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 118
    const/4 v4, 0x2

    aget-object v0, v0, v4

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_e5
    if-ge v0, v5, :cond_103

    aget-object v2, v4, v0

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_fc

    .line 120
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 81
    :cond_ff
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto/16 :goto_1c

    .line 124
    :cond_103
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiProfile;->addCsv(Ljava/util/Set;Ljava/lang/String;)V

    .line 125
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cond"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiProfile;->addCsv(Ljava/util/Set;Ljava/lang/String;)V

    :cond_143
    move-object v0, v1

    .line 127
    goto/16 :goto_6
.end method

.method public static of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_d

    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_e

    .line 70
    :cond_d
    :goto_d
    return-object v0

    .line 68
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_d

    .line 69
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

    .line 51
    if-nez p0, :cond_5

    move-object v0, v2

    .line 60
    :cond_4
    :goto_4
    return-object v0

    .line 54
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 55
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v0

    .line 56
    if-nez v0, :cond_4

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1d
    move-object v0, v2

    .line 60
    goto :goto_4
.end method

.method static yearsSince(Ljava/util/Date;)I
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 210
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v2, v1, :cond_22

    .line 211
    add-int/lit8 v0, v0, -0x1

    .line 213
    :cond_22
    return v0
.end method


# virtual methods
.method public applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 7

    .prologue
    .line 145
    if-nez p1, :cond_3

    .line 180
    :cond_2
    return-void

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_b

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 151
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 154
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_23

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 157
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_2b

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 160
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_51

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 162
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 163
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->values()[Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v2, :cond_51

    aget-object v3, v1, v0

    .line 164
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 165
    iput-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 171
    :cond_51
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    .line 173
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6d
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 176
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 163
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method

.method public personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->focus:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiProfile;->cond:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v0

    return-object v0
.end method

.method public toInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .prologue
    .line 184
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    .line 185
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 186
    return-object v0
.end method
