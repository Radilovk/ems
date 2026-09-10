.class public Lcom/isaigu/gymapp/train/utils/OperationUtil;
.super Ljava/lang/Object;
.source "OperationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$settingAllUser$0(Ljava/util/ArrayList;Ljava/lang/Runnable;Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .locals 7
    .param p0, "wrapperArrayList"    # Ljava/util/ArrayList;
    .param p1, "completeRunnable"    # Ljava/lang/Runnable;
    .param p2, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;
    .param p3, "checks"    # Ljava/util/List;

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 200
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 201
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 202
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 203
    .local v2, "useType":I
    invoke-static {p2}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 204
    .local v3, "cloneProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 205
    .local v4, "originalProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 206
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 207
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 208
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 209
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v2, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 210
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 199
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v2    # "useType":I
    .end local v3    # "cloneProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v4    # "originalProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static requestPermission(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 166
    invoke-static {p0}, Lme/weyye/hipermission/HiPermission;->create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/utils/OperationUtil$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/OperationUtil$2;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    .line 167
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lme/weyye/hipermission/HiPermission;->checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V

    .line 185
    return-void
.end method

.method public static save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 4
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;
    .param p1, "program"    # Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 37
    new-instance v0, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;-><init>()V

    .line 38
    .local v0, "dialog":Lcom/isaigu/gymapp/dialog/SaveProgramDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setArguments(Landroid/os/Bundle;)V

    .line 41
    new-instance v2, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/OperationUtil$1;-><init>(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SaveProgramDialog;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/SaveProgramDialog;->setListener(Lcom/isaigu/gymapp/dialog/SaveProgramDialog$SaveProgramListener;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 159
    return-void
.end method

.method public static settingAllUser(Lcom/isaigu/gymapp/BaseActivity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;
    .param p2, "completeRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/BaseActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 188
    .local p1, "wrapperArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 189
    const v0, 0x7f0d0023

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->showTips(Lcom/isaigu/gymapp/BaseActivity;I)V

    .line 190
    return-void

    .line 192
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;-><init>()V

    .line 193
    .local v0, "editUserProgramDataDialog":Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    const-string v3, "editProgram"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const/4 v2, 0x1

    const-string v3, "multiEdit"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 198
    new-instance v2, Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;

    invoke-direct {v2, p1, p2}, Lcom/isaigu/gymapp/train/utils/-$$Lambda$OperationUtil$99fDtgBA0OnvOfah7stLVICo_PU;-><init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->setSaveProgramListener(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 215
    return-void
.end method

.method public static showTips(Lcom/isaigu/gymapp/BaseActivity;I)V
    .locals 1
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;
    .param p1, "resId"    # I

    .line 162
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 163
    return-void
.end method
