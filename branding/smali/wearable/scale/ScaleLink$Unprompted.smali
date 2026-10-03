.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;
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
    name = "Unprompted"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V
    .registers 2

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 876
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    if-nez v0, :cond_17

    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeA()V

    .line 884
    :cond_17
    return-void
.end method
