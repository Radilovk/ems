.class public final Lcom/isaigu/gymapp/ai/AiProfile;
.super Ljava/lang/Object;
.source "AiProfile.java"


# static fields
.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"


# instance fields
.field public age:Ljava/lang/Integer;

.field public final contraindications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public userId:J

.field public weightKg:Ljava/lang/Double;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    .line 35
    return-void
.end method

.method private static appContext()Landroid/content/Context;
    .registers 5

    .line 170
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 171
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    return-object v1

    .line 172
    :catchall_19
    move-exception v1

    .line 173
    return-object v0
.end method

.method static fitness(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;
    .registers 2

    .line 151
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    return-object p0

    .line 152
    :cond_b
    const-string v0, "mid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    return-object p0

    .line 153
    :cond_16
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    return-object p0

    .line 154
    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method static goal(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 2

    .line 142
    const-string v0, "tone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object p0

    .line 143
    :cond_b
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object p0

    .line 144
    :cond_16
    const-string v0, "massage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object p0

    .line 145
    :cond_21
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object p0

    .line 146
    :cond_2c
    const-string v0, "cellulite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    return-object p0

    .line 147
    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public static of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 7

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    new-instance v0, Lcom/isaigu/gymapp/ai/AiProfile;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiProfile;-><init>()V

    .line 67
    iget-wide v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->userId:J

    .line 68
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v1, :cond_1e

    .line 69
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v2, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_1c

    :cond_1a
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1c
    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 71
    :cond_1e
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v1, :cond_36

    .line 72
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->yearsSince(Ljava/util/Date;)I

    move-result v1

    .line 73
    const/16 v2, 0xa

    if-lt v1, v2, :cond_36

    const/16 v2, 0x64

    if-gt v1, v2, :cond_36

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    .line 77
    :cond_36
    iget v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4f

    iget v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/high16 v2, 0x437a0000    # 250.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4f

    .line 78
    iget v1, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    .line 80
    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiProfile;->appContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_b5

    .line 82
    const-string v2, "xems_user_profiles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    const-string v2, "\\|"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 84
    array-length v1, p0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_b5

    .line 85
    aget-object v1, p0, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->goal(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 86
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiProfile;->fitness(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 87
    const/4 v1, 0x2

    aget-object p0, p0, v1

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_9b
    if-ge v3, v1, :cond_b5

    aget-object v2, p0, v3

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b2

    .line 89
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 94
    :cond_b5
    return-object v0
.end method

.method public static of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 3

    .line 53
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_e

    goto :goto_19

    .line 56
    :cond_e
    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-object p0

    .line 57
    :catchall_17
    move-exception p0

    .line 58
    return-object v0

    .line 54
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static ofItems(Ljava/util/List;)Lcom/isaigu/gymapp/ai/AiProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AiProfile;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 40
    return-object v0

    .line 42
    :cond_4
    const/4 v1, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_18

    .line 45
    return-object v2

    .line 42
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 48
    :cond_1b
    return-object v0
.end method

.method static yearsSince(Ljava/util/Date;)I
    .registers 4

    .line 158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 161
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 162
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge p0, v0, :cond_22

    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 165
    :cond_22
    return v2
.end method


# virtual methods
.method public applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 7

    .line 99
    if-nez p1, :cond_3

    .line 100
    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_9

    .line 103
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 108
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_1d

    .line 109
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 111
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_23

    .line 112
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 114
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_4b

    .line 115
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 116
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 117
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->values()[Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_4b

    aget-object v3, v0, v2

    .line 118
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 119
    iput-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 120
    goto :goto_4b

    .line 117
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 125
    :cond_4b
    :goto_4b
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v0, :cond_78

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->contraindications:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 128
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_77
    goto :goto_55

    .line 132
    :cond_78
    return-void
.end method

.method public toInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;
    .registers 2

    .line 136
    new-instance v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;-><init>()V

    .line 137
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->applyTo(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 138
    return-object v0
.end method
