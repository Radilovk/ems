.class Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;
.super Ljava/lang/Object;
.source "ICSkipS2Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 791
    iget v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyCount:I

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->deleteHistory(I)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    const/4 v1, 0x0

    .line 792
    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyCount:I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    .line 793
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;

    const/4 v1, 0x0

    .line 794
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method
