.class Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

.field final synthetic val$httpSuccess:Z

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;ZLcom/isaigu/gymapp/bean/vo/ResponseData;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$3"    # Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iput-boolean p2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$httpSuccess:Z

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    iput-object p4, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x68

    const v5, 0x7f0f013f

    const/4 v4, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$httpSuccess:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v0, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->appLogoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->appLogoUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    .line 115
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->useTime:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/vo/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->token:Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/mgr/ApiMgr;->token:Ljava/lang/String;

    .line 120
    const-string v0, "ROLE_COACH"

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sput-boolean v4, Lcom/isaigu/gymapp/mgr/DataMgr;->singleMode:Z

    .line 123
    invoke-static {v6}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/MainFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/MainFragment;-><init>()V

    invoke-virtual {v0, v5, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {v6}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/StartFragment;-><init>()V

    invoke-virtual {v0, v5, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$httpSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->val$result:Lcom/isaigu/gymapp/bean/vo/ResponseData;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/CommonUtils;->showErrorTips(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/bean/UserData;->rememberPassword:Z

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2$1;->this$3:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1$2;->this$2:Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/fragment/LoginFragment;

    invoke-direct {v1}, Lcom/isaigu/gymapp/fragment/LoginFragment;-><init>()V

    invoke-virtual {v0, v5, v1}, Lcom/isaigu/gymapp/BaseActivity;->replace(ILcom/isaigu/gymapp/BaseFragment;)V

    goto :goto_0
.end method
