.class Lcom/isaigu/gymapp/fragment/LoginFragment$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/LoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/LoginFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$000(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "username":Ljava/lang/String;
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$100(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "pwd":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v7, 0x7f0800c7

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v7, 0x7f080078

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 80
    :cond_2
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v7, 0x7f08006f

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    const/16 v5, 0x67

    invoke-static {v5}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 84
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    const/4 v5, 0x1

    sput-boolean v5, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    const-string v5, "file_name_login_user"

    const-class v7, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v5, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v5

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v6, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v6, v5, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 115
    const-string v5, "ROLE_COACH"

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 117
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    .line 121
    .restart local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    :goto_1
    move-object v2, v1

    .line 122
    .local v2, "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    new-instance v6, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;

    invoke-direct {v6, p0, v2}, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$1;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v8, 0x640

    invoke-virtual {v5, v6, v8, v9}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 119
    .end local v2    # "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    :cond_4
    new-instance v1, Lcom/isaigu/gymapp/fragment/StartFragment;

    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    .restart local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    goto :goto_1

    .line 129
    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    :cond_5
    const/16 v5, 0x68

    invoke-static {v5}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 130
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v7, 0x7f0800c6

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_6
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 134
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    iput-object v4, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 135
    invoke-static {v3}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 138
    new-instance v5, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2;

    invoke-direct {v5, p0, v4, v3}, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto/16 :goto_0
.end method
