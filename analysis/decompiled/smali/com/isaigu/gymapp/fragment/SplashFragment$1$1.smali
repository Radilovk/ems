.class Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v5, 0x7f0f013f

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/UserData;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    const/16 v3, 0x67

    invoke-static {v3}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 77
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    const/4 v3, 0x1

    sput-boolean v3, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    const-string v3, "file_name_login_user"

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v3, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v4, v3, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 83
    const-string v3, "ROLE_COACH"

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v3, 0x0

    sput-boolean v3, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 85
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    .line 89
    .restart local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    :goto_0
    move-object v2, v1

    .line 90
    .local v2, "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$1;

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v6, 0x640

    invoke-virtual {v3, v4, v6, v7}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 144
    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    .end local v2    # "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    :goto_1
    return-void

    .line 87
    .restart local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/fragment/StartFragment;

    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    .restart local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    goto :goto_0

    .line 97
    .end local v1    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    :cond_1
    const/16 v3, 0x68

    invoke-static {v3}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 98
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v3, v5, v4}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 102
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    iput-object v3, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 106
    new-instance v3, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;)V

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    goto :goto_1

    .line 142
    .end local v0    # "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    :cond_3
    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v4}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v3, v5, v4}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_1
.end method
