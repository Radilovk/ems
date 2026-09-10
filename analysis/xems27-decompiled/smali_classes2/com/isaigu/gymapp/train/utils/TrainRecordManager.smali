.class public Lcom/isaigu/gymapp/train/utils/TrainRecordManager;
.super Ljava/lang/Object;
.source "TrainRecordManager.java"


# instance fields
.field baseActivity:Lcom/isaigu/gymapp/BaseActivity;

.field private trainRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 1
    .param p1, "baseActivity"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->baseActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 30
    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 98
    .local v0, "trainRecordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->baseActivity:Lcom/isaigu/gymapp/BaseActivity;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    .line 100
    new-instance v1, Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager$1;-><init>(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->addTrainRecord(Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 121
    :cond_0
    return-void
.end method

.method private updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p3, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    .line 70
    .local v0, "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    const-string v1, "maxBodyStrenth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 72
    .local v1, "integer":F
    iget v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 73
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 74
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 76
    .end local v1    # "integer":F
    :cond_2
    goto :goto_0

    :cond_3
    const-string v1, "minBodyStrenth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 78
    .restart local v1    # "integer":F
    iget v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 79
    float-to-int v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    .line 81
    .end local v1    # "integer":F
    :cond_4
    goto :goto_0

    .line 82
    :cond_5
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/utils/ReflectUtils;->setObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 64
    .end local v0    # "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public addTrainRecord(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 33
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;-><init>()V

    .line 38
    .local v0, "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->userId:Ljava/lang/Long;

    .line 39
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->useType:I

    .line 40
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 41
    .local v1, "program":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseContinue:I

    .line 42
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulseWidth:I

    .line 43
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->pulsePause:I

    .line 44
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->workLength:I

    .line 45
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->hz:I

    .line 46
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->trainName:Ljava/lang/String;

    .line 47
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->strenth:I

    .line 48
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->inputRamp:I

    .line 49
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->outputRamp:I

    .line 50
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->maxBodyStrenth:I

    .line 51
    const/4 v2, 0x0

    iput v2, v0, Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;->minBodyStrenth:I

    .line 53
    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v0    # "recordDTO":Lcom/isaigu/gymapp/bean/dto/TrainRecordDTO;
    .end local v1    # "program":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_1
    return-void

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$saveTrainRecord$0$TrainRecordManager(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->save(Ljava/lang/String;)V

    return-void
.end method

.method public removeTrainRecord(Ljava/lang/String;)V
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->trainRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public saveTrainRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;-><init>(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public updateRecordValue(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 4
    .param p1, "data"    # Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 58
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->getMaxBodyStrenth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "maxBodyStrenth"

    invoke-direct {p0, v0, v3, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->getMinBodyStrenth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "minBodyStrenth"

    invoke-direct {p0, v0, v2, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->updateTrainRecordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
