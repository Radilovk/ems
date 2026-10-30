.class public Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;
.super Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;
.source "ICWPManagerDevicesModel.java"


# instance fields
.field public addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

.field public devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;"
        }
    .end annotation
.end field

.field public filepath:Ljava/lang/String;

.field public mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field public removeCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;-><init>()V

    return-void
.end method
