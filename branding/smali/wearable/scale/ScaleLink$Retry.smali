.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;
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
    name = "Retry"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V
    .registers 2

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 812
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_b

    .line 817
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->startScan()V

    .line 819
    :cond_b
    return-void
.end method
