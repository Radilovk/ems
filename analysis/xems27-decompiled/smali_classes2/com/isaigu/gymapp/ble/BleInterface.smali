.class public interface abstract Lcom/isaigu/gymapp/ble/BleInterface;
.super Ljava/lang/Object;
.source "BleInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;,
        Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;,
        Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;
    }
.end annotation


# static fields
.field public static final BLE_CLOSED:I = 0x4

.field public static final BLE_NOT_SUPPORT:I = 0x2

.field public static final BLE_NOT_UNAUTHORIZE:I = 0x3

.field public static final BLE_OPEN:I = 0x5

.field public static final BLE_RESETING:I = 0x1

.field public static final BLE_UNKNOW:I = 0x0

.field public static final CONTROL_UUID:Ljava/lang/String; = "fff2"

.field public static final Disconnect_Type_GATT:I = 0x1

.field public static final Disconnect_Type_User:I = 0x2

.field public static final NOTIFY_UUID:Ljava/lang/String; = "fff1"

.field public static final SERVICE_UUID:Ljava/lang/String; = "fff0"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I


# virtual methods
.method public abstract addFilterBean(Lcom/isaigu/gymapp/ble/BleInterface$FilterBean;)V
.end method

.method public abstract connectByAddress(Ljava/lang/String;)Z
.end method

.method public abstract disconnectAll()V
.end method

.method public abstract disconnectByAddress(Ljava/lang/String;)Z
.end method

.method public abstract getBleState()I
.end method

.method public abstract getConnectState(Ljava/lang/String;)I
.end method

.method public abstract getRoughlyDistance()I
.end method

.method public abstract init()Z
.end method

.method public abstract isBleScanning()Z
.end method

.method public abstract isConnected(Ljava/lang/String;)Z
.end method

.method public abstract read(Ljava/lang/String;)Z
.end method

.method public abstract read(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract readRSSI(Ljava/lang/String;)V
.end method

.method public abstract requestCloseBle()V
.end method

.method public abstract requestOpenBle()V
.end method

.method public abstract setBluetoothCallback(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;)V
.end method

.method public abstract startScan()Z
.end method

.method public abstract startScan(Ljava/lang/String;)Z
.end method

.method public abstract stopScan()V
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method public abstract write(Ljava/lang/String;[B)Z
.end method
