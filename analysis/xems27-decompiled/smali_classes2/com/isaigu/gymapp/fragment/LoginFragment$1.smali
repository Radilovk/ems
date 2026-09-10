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

    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$000(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;->access$100(Lcom/isaigu/gymapp/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "pwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v4, 0x7f0d00ee

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v4, 0x7f0d0087

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 76
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v4, 0x7f0d007d

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    .line 81
    return-void

    .line 83
    :cond_3
    const/16 v2, 0x67

    invoke-static {v2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 84
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v3

    const-class v4, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v5, "file_name_login_user"

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v4, v3, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v4, v3, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 115
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    const-string v4, "ROLE_COACH"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    const/4 v3, 0x0

    sput-boolean v3, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 117
    new-instance v3, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v3}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    move-object v2, v3

    goto :goto_0

    .line 119
    :cond_4
    new-instance v3, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v3}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    move-object v2, v3

    .line 121
    :goto_0
    move-object v3, v2

    .line 122
    .local v3, "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;

    invoke-direct {v5, p0, v3}, Lcom/isaigu/gymapp/fragment/LoginFragment$1$1;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$1;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v6, 0x640

    invoke-virtual {v4, v5, v6, v7}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 128
    .end local v2    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    .end local v3    # "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    goto :goto_1

    .line 129
    :cond_5
    const/16 v2, 0x68

    invoke-static {v2}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 130
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/LoginFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/LoginFragment;

    const v4, 0x7f0d00ed

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_6
    new-instance v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 134
    .local v2, "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    iput-object v0, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 135
    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 138
    new-instance v3, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/isaigu/gymapp/fragment/LoginFragment$1$2;-><init>(Lcom/isaigu/gymapp/fragment/LoginFragment$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 179
    .end local v2    # "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    :goto_1
    return-void
.end method
