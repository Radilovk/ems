.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;
.super Ljava/lang/Object;
.source "ScaleLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# static fields
.field static final DESC:I = 0x1

.field static final READY:I = 0x4

.field static final WRITE_ACKED:I = 0x2

.field static final WRITE_FAST:I = 0x3


# instance fields
.field final data:[B

.field final desc:Landroid/bluetooth/BluetoothGattDescriptor;

.field final kind:I


# direct methods
.method constructor <init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V
    .registers 4

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    .line 744
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 745
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    .line 746
    return-void
.end method
