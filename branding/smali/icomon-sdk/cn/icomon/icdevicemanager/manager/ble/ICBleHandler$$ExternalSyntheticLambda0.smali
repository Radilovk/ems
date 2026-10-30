.class public final synthetic Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# instance fields
.field public final synthetic f$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;


# direct methods
.method public synthetic constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;ZZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$3:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;

    iput-boolean p5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$4:Z

    iput-boolean p6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$5:Z

    iput-object p7, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$6:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$3:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;

    iget-boolean v4, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$4:Z

    iget-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$5:Z

    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$$ExternalSyntheticLambda0;->f$6:Lcn/icomon/icdevicemanager/manager/ble/ICPeripheral;

    invoke-virtual/range {v0 .. v6}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->lambda$setNotify$0$cn-icomon-icdevicemanager-manager-ble-ICBleHandler(Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUSetNotifyModel;ZZLcn/icomon/icdevicemanager/manager/ble/ICPeripheral;)V

    return-void
.end method
