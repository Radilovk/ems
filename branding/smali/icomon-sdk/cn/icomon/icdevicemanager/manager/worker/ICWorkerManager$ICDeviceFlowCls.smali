.class Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;
.super Ljava/lang/Object;
.source "ICWorkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICDeviceFlowCls"
.end annotation


# instance fields
.field private device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public filePath:Ljava/lang/String;

.field private isDelete:Z

.field private isFirst:Z

.field private isStart:Z

.field public otaMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field private removeDeviceCB:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

.field private scanModel:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

.field private type:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;


# direct methods
.method static bridge synthetic -$$Nest$fgetdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/device/ICDevice;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDelete(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z
    .registers 1

    iget-boolean p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isDelete:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisFirst(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z
    .registers 1

    iget-boolean p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isFirst:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Z
    .registers 1

    iget-boolean p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetremoveDeviceCB(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->removeDeviceCB:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscanModel(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->scanModel:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;)Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->type:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdevice(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisDelete(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isDelete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisFirst(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isFirst:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisStart(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputremoveDeviceCB(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->removeDeviceCB:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscanModel(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->scanModel:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->type:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    return-void
.end method

.method public constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isStart:Z

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isDelete:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->isFirst:Z

    .line 189
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;->ICDeviceFlowTypeUnknown:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowCls;->type:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$ICDeviceFlowType;

    return-void
.end method
