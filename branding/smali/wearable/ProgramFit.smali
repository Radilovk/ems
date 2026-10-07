.class public final Lcom/isaigu/gymapp/wearable/ProgramFit;
.super Ljava/lang/Object;
.source "ProgramFit.java"


# static fields
.field private static final FILE_PROGRAMS:Ljava/lang/String; = "file_name_train_data"

.field static final MODES:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachSwitch(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 157
    if-nez p0, :cond_3

    .line 176
    :cond_2
    :goto_2
    return-void

    .line 161
    :cond_3
    const/4 v3, 0x0

    move-object v2, p0

    .line 162
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2e

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 164
    instance-of v4, v1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_2c

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2c

    .line 165
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 170
    :goto_1f
    if-eqz v1, :cond_2

    .line 171
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->style(Landroid/view/ViewGroup;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_2

    .line 173
    :catch_25
    move-exception v1

    .line 174
    const-string v2, "ProgramFit.attachSwitch"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2c
    move-object v2, v1

    .line 169
    goto :goto_5

    :cond_2e
    move-object v1, v3

    goto :goto_1f
.end method

.method static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    .line 42
    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    .line 43
    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3
.end method

.method public static onEdit(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5

    .prologue
    .line 102
    if-eqz p0, :cond_13

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_14

    .line 108
    :cond_13
    :goto_13
    return-void

    .line 105
    :catch_14
    move-exception v0

    .line 106
    const-string v1, "ProgramFit.onEdit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static onMaster(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5

    .prologue
    .line 113
    :try_start_0
    invoke-static {p2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 114
    if-eqz v0, :cond_11

    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 115
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 120
    :cond_11
    :goto_11
    return-void

    .line 117
    :catch_12
    move-exception v0

    .line 118
    const-string v1, "ProgramFit.onMaster"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method static own(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 49
    if-nez v2, :cond_8

    .line 50
    const/4 v0, 0x0

    .line 64
    :goto_7
    return-object v0

    .line 52
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 53
    if-eqz v3, :cond_2d

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 55
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_29

    .line 56
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 57
    if-eqz v0, :cond_29

    .line 58
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_7

    .line 54
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2d
    move-object v0, v2

    .line 64
    goto :goto_7
.end method

.method static programs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 124
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 125
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 126
    if-eqz v1, :cond_23

    .line 127
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 128
    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_23

    .line 129
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 130
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 131
    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    .line 132
    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 128
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 136
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 137
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_35

    .line 138
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 140
    :cond_35
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 142
    :try_start_38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_4a

    .line 145
    :goto_3b
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 147
    const/16 v0, 0x6a

    :try_start_46
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4c

    .line 150
    :goto_49
    return-void

    .line 143
    :catch_4a
    move-exception v1

    goto :goto_3b

    .line 148
    :catch_4c
    move-exception v0

    goto :goto_49
.end method

.method static stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 74
    if-eqz p0, :cond_9

    if-nez v3, :cond_b

    :cond_9
    move-object v0, v2

    .line 83
    :cond_a
    :goto_a
    return-object v0

    .line 77
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 78
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 79
    if-eqz v0, :cond_23

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 77
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_27
    move-object v0, v2

    .line 83
    goto :goto_a
.end method

.method static tick(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
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
    .line 88
    if-nez p1, :cond_3

    .line 97
    :cond_2
    return-void

    .line 91
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 93
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 94
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->seen(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 91
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method
