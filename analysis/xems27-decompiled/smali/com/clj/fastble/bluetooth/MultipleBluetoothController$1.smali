.class Lcom/clj/fastble/bluetooth/MultipleBluetoothController$1;
.super Ljava/lang/Object;
.source "MultipleBluetoothController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->getBleBluetoothList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/clj/fastble/bluetooth/BleBluetooth;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/MultipleBluetoothController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    .line 106
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/MultipleBluetoothController$1;->this$0:Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/clj/fastble/bluetooth/BleBluetooth;Lcom/clj/fastble/bluetooth/BleBluetooth;)I
    .locals 2
    .param p1, "lhs"    # Lcom/clj/fastble/bluetooth/BleBluetooth;
    .param p2, "rhs"    # Lcom/clj/fastble/bluetooth/BleBluetooth;

    .line 109
    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 106
    check-cast p1, Lcom/clj/fastble/bluetooth/BleBluetooth;

    check-cast p2, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {p0, p1, p2}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController$1;->compare(Lcom/clj/fastble/bluetooth/BleBluetooth;Lcom/clj/fastble/bluetooth/BleBluetooth;)I

    move-result p1

    return p1
.end method
