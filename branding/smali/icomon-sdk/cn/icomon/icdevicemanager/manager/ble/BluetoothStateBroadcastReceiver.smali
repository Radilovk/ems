.class public Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStateBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 23
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2b

    .line 24
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object p2

    new-instance v0, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver$1;

    invoke-direct {v0, p0, p1}, Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver$1;-><init>(Lcn/icomon/icdevicemanager/manager/ble/BluetoothStateBroadcastReceiver;I)V

    invoke-virtual {p2, v0}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    :cond_2b
    return-void
.end method
