.class public final Lcom/isaigu/gymapp/wearable/ProgramFit;
.super Ljava/lang/Object;
.source "ProgramFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;
    }
.end annotation


# static fields
.field private static final FILE_PROGRAMS:Ljava/lang/String; = "file_name_train_data"

.field static final MODES:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 228
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 229
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 230
    check-cast v0, Landroid/app/Activity;

    .line 234
    :goto_b
    return-object v0

    .line 232
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 234
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static attachSwitch(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 172
    if-nez p0, :cond_3

    .line 191
    :cond_2
    :goto_2
    return-void

    .line 176
    :cond_3
    const/4 v3, 0x0

    move-object v2, p0

    .line 177
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2e

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 179
    instance-of v4, v1, Landroid/widget/ScrollView;

    if-eqz v4, :cond_2c

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2c

    .line 180
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 185
    :goto_1f
    if-eqz v1, :cond_2

    .line 186
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->style(Landroid/view/ViewGroup;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_2

    .line 188
    :catch_25
    move-exception v1

    .line 189
    const-string v2, "ProgramFit.attachSwitch"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2c
    move-object v2, v1

    .line 184
    goto :goto_5

    :cond_2e
    move-object v1, v3

    goto :goto_1f
.end method

.method static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    .line 47
    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    .line 48
    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_3
.end method

.method public static bindSaveAs(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 197
    if-eqz p0, :cond_a

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    :cond_a
    return-void
.end method

.method public static forSave(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p0, :cond_8

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 130
    :goto_5
    if-nez v1, :cond_a

    .line 134
    :cond_7
    :goto_7
    return-object v0

    :cond_8
    move-object v1, v0

    .line 129
    goto :goto_5

    .line 133
    :cond_a
    invoke-static {v1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 134
    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_7
.end method

.method public static onEdit(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5

    .prologue
    .line 107
    if-eqz p0, :cond_13

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_13

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_14

    .line 113
    :cond_13
    :goto_13
    return-void

    .line 110
    :catch_14
    move-exception v0

    .line 111
    const-string v1, "ProgramFit.onEdit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public static onMaster(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5

    .prologue
    .line 118
    :try_start_0
    invoke-static {p2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 119
    if-eqz v0, :cond_11

    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 120
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->saveBase(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 125
    :cond_11
    :goto_11
    return-void

    .line 122
    :catch_12
    move-exception v0

    .line 123
    const-string v1, "ProgramFit.onMaster"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static onSaveClick(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 6

    .prologue
    .line 240
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->init(Landroid/content/Context;)V

    .line 241
    if-eqz p1, :cond_65

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 242
    :goto_7
    if-eqz p0, :cond_67

    if-eqz v0, :cond_67

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    if-eqz v1, :cond_67

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->save(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u0417\u0430\u043f\u0438\u0441\u0430\u043d\u043e \u0437\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713 Saved for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 254
    :cond_64
    :goto_64
    return-void

    .line 241
    :cond_65
    const/4 v0, 0x0

    goto :goto_7

    .line 247
    :cond_67
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->forSave(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 248
    if-eqz p0, :cond_64

    if-eqz v0, :cond_64

    .line 249
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_64

    .line 251
    :catch_73
    move-exception v0

    .line 252
    const-string v1, "ProgramFit.onSaveClick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64
.end method

.method static own(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 54
    if-nez v2, :cond_8

    .line 55
    const/4 v0, 0x0

    .line 69
    :goto_7
    return-object v0

    .line 57
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_2d

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 60
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_29

    .line 61
    invoke-static {v2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 62
    if-eqz v0, :cond_29

    .line 63
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    goto :goto_7

    .line 59
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2d
    move-object v0, v2

    .line 69
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
    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 74
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
    .line 139
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 140
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_23

    .line 142
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 143
    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_23

    .line 144
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 145
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 146
    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    .line 147
    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 143
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 151
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 152
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_35

    .line 153
    iget-object v1, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 155
    :cond_35
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 157
    :try_start_38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_4a

    .line 160
    :goto_3b
    const-string v1, "file_name_train_data"

    const-class v2, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainData:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 162
    const/16 v0, 0x6a

    :try_start_46
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4c

    .line 165
    :goto_49
    return-void

    .line 158
    :catch_4a
    move-exception v1

    goto :goto_3b

    .line 163
    :catch_4c
    move-exception v0

    goto :goto_49
.end method

.method static stored(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ProgramFit;->programs()Ljava/util/List;

    move-result-object v3

    .line 79
    if-eqz p0, :cond_9

    if-nez v3, :cond_b

    :cond_9
    move-object v0, v2

    .line 88
    :cond_a
    :goto_a
    return-object v0

    .line 82
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 83
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 84
    if-eqz v0, :cond_23

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 82
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_27
    move-object v0, v2

    .line 88
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
    .line 93
    if-nez p1, :cond_3

    .line 102
    :cond_2
    return-void

    .line 96
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 98
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 99
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->seen(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 96
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method
