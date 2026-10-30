.class public final synthetic Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# instance fields
.field public final synthetic f$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field public final synthetic f$1:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;


# direct methods
.method public synthetic constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;->f$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;->f$1:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;->f$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda1;->f$1:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->lambda$updateUserInfo$1$cn-icomon-icdevicemanager-ICDeviceManager(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    return-void
.end method
