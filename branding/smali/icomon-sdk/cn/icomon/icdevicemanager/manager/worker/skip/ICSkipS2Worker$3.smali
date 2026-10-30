.class Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;
.super Ljava/lang/Object;
.source "ICSkipS2Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1160
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1161
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1163
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1164
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    :cond_15
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1167
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 1168
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    const/4 v1, 0x0

    .line 1169
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_27
    return-void
.end method
