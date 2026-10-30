.class public final synthetic Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# instance fields
.field public final synthetic f$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field public final synthetic f$1:Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;


# direct methods
.method public synthetic constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;->f$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;->f$1:Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;->f$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$$ExternalSyntheticLambda2;->f$1:Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->lambda$updateConfig$0$cn-icomon-icdevicemanager-ICDeviceManager(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    return-void
.end method
