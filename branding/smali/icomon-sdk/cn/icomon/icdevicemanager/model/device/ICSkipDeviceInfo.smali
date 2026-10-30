.class public Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;
.super Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;
.source "ICSkipDeviceInfo.java"


# instance fields
.field public maxSkipCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->maxSkipCount:I

    return-void
.end method
