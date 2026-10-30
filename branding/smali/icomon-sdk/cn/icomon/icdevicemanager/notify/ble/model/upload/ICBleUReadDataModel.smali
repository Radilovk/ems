.class public Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUReadDataModel;
.super Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;
.source "ICBleUReadDataModel.java"


# instance fields
.field public characteristic:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

.field public data:[B

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;-><init>()V

    return-void
.end method
