.class public Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICGPublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;
    }
.end annotation


# instance fields
.field public model:Ljava/lang/Object;

.field public type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;)Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;
    .registers 2

    .line 73
    new-instance v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;-><init>()V

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    return-object v0
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;
    .registers 3

    .line 79
    new-instance v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;-><init>()V

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->type:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;->model:Ljava/lang/Object;

    return-object v0
.end method
