.class Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;
.super Ljava/lang/Object;
.source "ICSkipS2Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->initWorker()V
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 147
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isConnected:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 148
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 149
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->queryHistory()V

    goto :goto_1f

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 151
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 152
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->queryHistory()V

    :cond_1f
    :goto_1f
    return-void
.end method
