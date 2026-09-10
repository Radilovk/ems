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

    .line 72
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/UserData;->isLogin()Z

    move-result v0

    const v1, 0x7f0900a4

    if-eqz v0, :cond_3

    .line 75
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "fragment":Lcom/isaigu/gymapp/BaseFragment;
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    const-class v2, Lcom/isaigu/gymapp/bean/TrainUser;

    const-string v3, "file_name_login_user"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v2, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v2, v1, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    const-string v2, "ROLE_COACH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 85
    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    move-object v0, v1

    .line 89
    :goto_0
    move-object v1, v0

    .line 90
    .local v1, "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$1;

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;Lcom/isaigu/gymapp/BaseFragment;)V

    const-wide/16 v4, 0x640

    invoke-virtual {v2, v3, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 96
    .end local v0    # "fragment":Lcom/isaigu/gymapp/BaseFragment;
    .end local v1    # "fragment1":Lcom/isaigu/gymapp/BaseFragment;
    goto :goto_1

    .line 97
    :cond_1
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/LoginDTO;-><init>()V

    .line 102
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->username:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ffklggergmlgekrp86ffdfeef562fd5ffssdfehjktt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/dto/LoginDTO;->md5Password:Ljava/lang/String;

    .line 106
    new-instance v1, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->login(Lcom/isaigu/gymapp/bean/dto/LoginDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 140
    .end local v0    # "dto":Lcom/isaigu/gymapp/bean/dto/LoginDTO;
    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v2}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    .line 144
    :goto_1
    return-void
.end method
