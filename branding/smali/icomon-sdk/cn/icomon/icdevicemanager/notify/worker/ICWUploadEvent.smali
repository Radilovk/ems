.class public Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICWUploadEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;
    }
.end annotation


# instance fields
.field public device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field public error:Ljava/lang/Exception;

.field public identifier:Ljava/lang/String;

.field public model:Ljava/lang/Object;

.field public type:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;
    .registers 6

    .line 91
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;-><init>()V

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->identifier:Ljava/lang/String;

    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->model:Ljava/lang/Object;

    iput-object p4, v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;->error:Ljava/lang/Exception;

    return-object v0
.end method
