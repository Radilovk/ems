.class Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BluetoothStateBroadcastReceiver.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;I)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver$1;->this$0:Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver$1;->val$state:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    .line 27
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->shared()Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    move-result-object v0

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver$1;->val$state:I

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->onUpdateBleState(I)V

    return-void
.end method
