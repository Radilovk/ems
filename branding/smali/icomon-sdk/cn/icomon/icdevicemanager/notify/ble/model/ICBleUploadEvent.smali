.class public Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICBleUploadEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;
    }
.end annotation


# instance fields
.field public error:Ljava/lang/Exception;

.field public identifier:Ljava/lang/String;

.field public model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

.field public type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;Ljava/lang/Exception;)Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;
    .registers 5

    .line 94
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;-><init>()V

    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->error:Ljava/lang/Exception;

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent$ICBleUploadEventType;

    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;->identifier:Ljava/lang/String;

    return-object v0
.end method
