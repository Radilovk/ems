.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$15;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "ICBleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->_checkAdvDataFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler$15;->this$0:Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    .line 2671
    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .registers 2

    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 2

    .line 2674
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method
