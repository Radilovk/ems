.class public Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICSettingPublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;
    }
.end annotation


# instance fields
.field public device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public model:Ljava/lang/Object;

.field public type:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method
