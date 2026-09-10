.class public interface abstract Lcom/isaigu/gymapp/ble/BleInterface$BluetoothCallback;
.super Ljava/lang/Object;
.source "BleInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/BleInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothCallback"
.end annotation


# virtual methods
.method public abstract onBeginScan()V
.end method

.method public abstract onBleStateChange(I)V
.end method

.method public abstract onDataAvailable(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;Ljava/lang/String;[B)V
.end method

.method public abstract onDeviceConnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;)V
.end method

.method public abstract onDeviceDisconnected(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
.end method

.method public abstract onDeviceDiscovered(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V
.end method

.method public abstract onDeviceDiscoveredUpdate(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;ILjava/lang/String;[B)V
.end method

.method public abstract onReadRemoteRSSI(Lcom/isaigu/gymapp/ble/BleInterface$BluetoothDeviceModel;I)V
.end method

.method public abstract onStopScan()V
.end method
