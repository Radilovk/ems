.class public Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;
.super Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUBaseModel;
.source "ICWUDeviceOperateModel.java"


# instance fields
.field public addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

.field public addCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

.field public device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public removeCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

.field public removeCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUBaseModel;-><init>()V

    return-void
.end method
