.class Lcom/isaigu/gymapp/fragment/SettingFragment$5;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment;->initSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SettingFragment;

    .line 276
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iget-wide v1, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    const-wide/16 v3, 0x3c

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;-><init>()V

    .line 282
    .local v0, "dto":Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/UserData;->useTime:J

    iput-wide v1, v0, Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;->time:J

    .line 283
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->loginUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iput-wide v1, v0, Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;->userId:J

    .line 284
    new-instance v1, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SettingFragment$5$1;-><init>(Lcom/isaigu/gymapp/fragment/SettingFragment$5;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->uploadUseTime(Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 301
    .end local v0    # "dto":Lcom/isaigu/gymapp/bean/dto/UploadUserUseTimeDTO;
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 302
    return-void
.end method
