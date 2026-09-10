.class public Lcom/isaigu/gymapp/ble/BleController$WrapperData;
.super Ljava/lang/Object;
.source "BleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/BleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperData"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field public data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    .line 85
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    .line 86
    return-void
.end method
