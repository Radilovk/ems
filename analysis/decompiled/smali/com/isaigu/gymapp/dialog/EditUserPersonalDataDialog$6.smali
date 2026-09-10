.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x67

    .line 334
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f08008a

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f080090

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 352
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 356
    :cond_4
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 357
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->city:Ljava/lang/String;

    .line 361
    :cond_5
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    const-string v3, ""

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->address:Ljava/lang/String;

    .line 366
    :cond_6
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/mgr/CommonUtils;->getGenderString(Landroid/content/Context;Lcom/isaigu/gymapp/bean/Gender;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 367
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_7
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$700(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 372
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f08008f

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_8
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$800(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$800(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/ProjectUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 380
    :cond_9
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f080097

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :cond_a
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$900(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/support/v7/widget/AppCompatCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    .line 385
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_b
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$1000(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 390
    invoke-static {v4}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 391
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 392
    const-string v2, "file_name_offline_update_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 393
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-nez v0, :cond_c

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :cond_c
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v2, "file_name_offline_update_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->addOrUpdateTrainUser(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 399
    const-string v2, "file_name_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 401
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 409
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :cond_d
    const-string/jumbo v2, "\u5f00\u59cb\u66f4\u65b0\u7528\u6237\u6570\u636e\u3002\u3002\u3002\u3002"

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUpdateUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;

    move-result-object v1

    .line 411
    .local v1, "userDataDTO":Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;
    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$2;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->updateUserData(Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_0

    .line 441
    .end local v1    # "userDataDTO":Lcom/isaigu/gymapp/bean/dto/UpdateUserDataDTO;
    :cond_e
    invoke-static {v4}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7f51\u7edc\u72b6\u6001\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 444
    const-string v2, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 445
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-nez v0, :cond_f

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :cond_f
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    .line 449
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v2, "file_name_offline_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 451
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v2, "file_name_user_data"

    const-class v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 454
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$3;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;)V

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 462
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    :cond_10
    const-string/jumbo v2, "\u5f00\u59cb\u63d0\u4ea4\u7528\u6237\u6570\u636e\u3002\u3002\u3002\u3002"

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/mgr/DataMgr;->getSubmitUserData(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;

    move-result-object v1

    .line 464
    .local v1, "userDataDTO":Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;
    new-instance v2, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;)V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->submitUserData(Lcom/isaigu/gymapp/bean/dto/SubmitUserDataDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_0
.end method
