.class public Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanCharacteristicModel;
.super Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;
.source "ICBleUScanCharacteristicModel.java"


# instance fields
.field public characteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;",
            ">;"
        }
    .end annotation
.end field

.field public mtuSize:I

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;-><init>()V

    return-void
.end method
