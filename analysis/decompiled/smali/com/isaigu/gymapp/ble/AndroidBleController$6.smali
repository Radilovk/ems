.class Lcom/isaigu/gymapp/ble/AndroidBleController$6;
.super Ljava/lang/Object;
.source "AndroidBleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/AndroidBleController;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    iput-object p2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->this$0:Lcom/isaigu/gymapp/ble/AndroidBleController;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->val$address:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/AndroidBleController$6;->val$data:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->write(Ljava/lang/String;Ljava/lang/String;[B)Z

    return-void
.end method
