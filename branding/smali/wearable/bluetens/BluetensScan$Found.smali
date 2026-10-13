.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;
.super Ljava/lang/Object;
.source "BluetensScan.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Found"
.end annotation


# instance fields
.field final device:Landroid/bluetooth/BluetoothDevice;

.field final kind:I

.field final scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    .line 87
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->device:Landroid/bluetooth/BluetoothDevice;

    .line 88
    iput p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->kind:I

    .line 89
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->cb:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Cb;

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->scan:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan;->listener:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->device:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Found;->kind:I

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScan$Listener;->onPad(Landroid/bluetooth/BluetoothDevice;I)V

    .line 96
    :cond_11
    return-void
.end method
