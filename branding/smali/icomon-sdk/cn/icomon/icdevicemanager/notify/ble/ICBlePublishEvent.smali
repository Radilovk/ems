.class public Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;
.super Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.source "ICBlePublishEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;
    }
.end annotation


# instance fields
.field public identifier:Ljava/lang/String;

.field public model:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;

.field public obj:Ljava/lang/Object;

.field public type:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;-><init>()V

    return-void
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;
    .registers 4

    .line 112
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;-><init>()V

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->identifier:Ljava/lang/String;

    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->model:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;

    return-object v0
.end method

.method public static create(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Ljava/lang/String;Ljava/lang/Object;)Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;
    .registers 4

    .line 121
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;-><init>()V

    iput-object p0, v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->type:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->identifier:Ljava/lang/String;

    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent;->obj:Ljava/lang/Object;

    return-object v0
.end method
