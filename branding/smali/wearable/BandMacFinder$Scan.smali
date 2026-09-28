.class final Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;
.super Ljava/lang/Object;
.source "BandMacFinder.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandMacFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Scan"
.end annotation


# instance fields
.field private final f:Lcom/isaigu/gymapp/wearable/BandMacFinder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V
    .registers 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    .line 152
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 7

    .prologue
    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    # invokes: Lcom/isaigu/gymapp/wearable/BandMacFinder;->add(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->access$000(Lcom/isaigu/gymapp/wearable/BandMacFinder;Landroid/bluetooth/BluetoothDevice;)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    # getter for: Lcom/isaigu/gymapp/wearable/BandMacFinder;->hint:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->access$100(Lcom/isaigu/gymapp/wearable/BandMacFinder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    # invokes: Lcom/isaigu/gymapp/wearable/BandMacFinder;->matching()Ljava/util/List;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->access$200(Lcom/isaigu/gymapp/wearable/BandMacFinder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 158
    # getter for: Lcom/isaigu/gymapp/wearable/BandMacFinder;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandMacFinder;->access$300()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/BandMacFinder$Scan;->f:Lcom/isaigu/gymapp/wearable/BandMacFinder;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandMacFinder$Stop;-><init>(Lcom/isaigu/gymapp/wearable/BandMacFinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_2c
    return-void
.end method
