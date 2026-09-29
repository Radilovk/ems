.class public final Lcom/isaigu/gymapp/wearable/ClientPrograms;
.super Ljava/lang/Object;
.source "ClientPrograms.java"


# static fields
.field private static final PREFS:Ljava/lang/String; = "xems_client_programs"

.field private static app:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTo(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUser;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 74
    :goto_7
    if-eqz v1, :cond_b

    if-nez p1, :cond_e

    .line 99
    :cond_b
    :goto_b
    return v0

    .line 73
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 77
    :cond_e
    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->load(JLjava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_b

    .line 81
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->own(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->forget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 83
    :goto_1f
    const/4 v4, 0x4

    if-ge v0, v4, :cond_34

    .line 84
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 85
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 86
    if-eqz v4, :cond_31

    if-eqz v5, :cond_31

    .line 87
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 83
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 91
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_48

    .line 92
    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    :goto_46
    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 94
    :cond_48
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 95
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4e} :catch_79

    .line 98
    :goto_4e
    const-string v0, "manual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own settings \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_b

    .line 92
    :cond_76
    :try_start_76
    iget v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_78} :catch_79

    goto :goto_46

    .line 96
    :catch_79
    move-exception v0

    goto :goto_4e
.end method

.method static base(Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 125
    if-eqz p0, :cond_12

    iget-wide v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3, p1}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->load(JLjava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 126
    :goto_9
    if-eqz v1, :cond_11

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    :cond_11
    return-object v0

    :cond_12
    move-object v1, v0

    .line 125
    goto :goto_9
.end method

.method static copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 4

    .prologue
    .line 104
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 105
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 106
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 107
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 108
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 110
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 111
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 112
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 113
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_4f

    .line 116
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v0, :cond_41

    .line 117
    new-instance v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 119
    :cond_41
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 121
    :cond_4f
    return-void
.end method

.method public static has(JLjava/lang/String;)Z
    .registers 5

    .prologue
    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_12

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->key(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    if-eqz p0, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/ClientPrograms;->app:Landroid/content/Context;

    .line 29
    :cond_8
    return-void
.end method

.method static key(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_20

    :goto_17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-string p2, ""

    goto :goto_17
.end method

.method public static load(JLjava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1b

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->key(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_10
    if-eqz v0, :cond_1d

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1f

    .line 62
    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v1

    .line 58
    goto :goto_10

    :cond_1d
    move-object v0, v1

    .line 59
    goto :goto_1a

    .line 60
    :catch_1f
    move-exception v0

    .line 61
    const-string v2, "manual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 62
    goto :goto_1a
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientPrograms;->app:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientPrograms;->app:Landroid/content/Context;

    const-string v1, "xems_client_programs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 42
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_f

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 51
    :cond_f
    :goto_f
    return v0

    .line 46
    :cond_10
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v4, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->key(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    const-string v1, "manual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4d} :catch_4f

    .line 48
    const/4 v0, 0x1

    goto :goto_f

    .line 49
    :catch_4f
    move-exception v1

    .line 50
    const-string v2, "manual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client save: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
