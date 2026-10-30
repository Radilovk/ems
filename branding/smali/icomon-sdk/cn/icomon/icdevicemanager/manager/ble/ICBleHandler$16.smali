.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;
.super Ljava/lang/Object;
.source "ICBleHandler.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->addToTimeOutCheckList(Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

.field final synthetic val$identifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->val$identifier:Ljava/lang/String;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->val$callback:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    .line 2846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 2849
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_timeOutList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->val$identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 2850
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 2851
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->-$$Nest$fget_timeOutList(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->val$identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$16;->val$callback:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    if-eqz v0, :cond_23

    .line 2854
    invoke-interface {v0}, Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;->onCallBack()V

    :cond_23
    return-void
.end method
