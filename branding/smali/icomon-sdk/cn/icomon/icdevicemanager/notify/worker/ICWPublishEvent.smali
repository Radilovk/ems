.class public Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICWPublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;
    }
.end annotation


# instance fields
.field public device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public model:Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;

.field public type:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;
    .registers 4

    .line 55
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;-><init>()V

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent;->model:Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;

    return-object v0
.end method
