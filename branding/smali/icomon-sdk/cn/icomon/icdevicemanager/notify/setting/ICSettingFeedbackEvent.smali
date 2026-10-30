.class public Lcn/icomon/icdevicemanager/notify/setting/ICSettingFeedbackEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICSettingFeedbackEvent.java"


# instance fields
.field public code:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

.field public device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public feedbackEventId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method
