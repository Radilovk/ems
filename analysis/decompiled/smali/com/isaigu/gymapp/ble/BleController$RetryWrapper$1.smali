.class Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;
.super Ljava/lang/Object;
.source "BleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->startScheduleAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    .line 111
    .local v0, "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "0002"

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->writeOnUiThread(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry write:  \u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b21\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/utils/Utils;->printByteArray(Ljava/lang/String;[B)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->timer:Ljava/util/Timer;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 116
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v2, v1, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    .line 117
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    if-lt v1, v4, :cond_1

    .line 118
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->clear()V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53d1\u90013\u6b21\u6ca1\u56de\u590d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->access$200(Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;)V

    goto :goto_0
.end method
