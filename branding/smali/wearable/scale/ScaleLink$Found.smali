.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;
.super Ljava/lang/Object;
.source "ScaleLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Found"
.end annotation


# instance fields
.field final device:Landroid/bluetooth/BluetoothDevice;

.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 560
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;->device:Landroid/bluetooth/BluetoothDevice;

    .line 561
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->found(Landroid/bluetooth/BluetoothDevice;)V

    .line 566
    return-void
.end method
