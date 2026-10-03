.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;
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
    name = "Event"
.end annotation


# static fields
.field static final CHANGED:I = 0x3

.field static final CONNECTION:I = 0x1

.field static final OP_DONE:I = 0x4

.field static final SERVICES:I = 0x2


# instance fields
.field final a:I

.field final b:I

.field final data:[B

.field final g:Landroid/bluetooth/BluetoothGatt;

.field final kind:I

.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILandroid/bluetooth/BluetoothGatt;IILjava/util/UUID;[B)V
    .registers 8

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 633
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->kind:I

    .line 634
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    .line 635
    iput p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->a:I

    .line 636
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->b:I

    .line 637
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->uuid:Ljava/util/UUID;

    .line 638
    iput-object p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->data:[B

    .line 639
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-eqz v0, :cond_7

    .line 661
    :cond_6
    :goto_6
    return-void

    .line 647
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 648
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->a:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_6

    .line 658
    :catch_18
    move-exception v0

    .line 659
    const-string v1, "ScaleLink.event"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 649
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-ne v0, v1, :cond_6

    .line 651
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onServices(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_6

    .line 653
    :cond_34
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    .line 654
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->data:[B

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onChanged(Ljava/util/UUID;[B)V

    goto :goto_6

    .line 656
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opDone()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_48} :catch_18

    goto :goto_6
.end method
