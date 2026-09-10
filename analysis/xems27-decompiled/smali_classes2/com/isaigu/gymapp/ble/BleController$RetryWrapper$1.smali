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

    .line 114
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/mgr/BleMgr;->getController()Lcom/isaigu/gymapp/ble/AndroidBleController;

    move-result-object v0

    .line 117
    .local v0, "controller":Lcom/isaigu/gymapp/ble/AndroidBleController;
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    const-string v4, "fff2"

    invoke-virtual {v0, v4, v2, v3}, Lcom/isaigu/gymapp/ble/AndroidBleController;->write(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry write:  \u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u6b21\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/Utils;->printByteArray(Ljava/lang/String;[B)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->timer:Ljava/util/Timer;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 122
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v3, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    .line 123
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    if-lt v2, v1, :cond_1

    .line 124
    iget-object v2, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->clear()V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u90013\u6b21\u6ca1\u56de\u590d: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v3, v3, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    aget-byte v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;->this$0:Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    invoke-static {v1}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->access$200(Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;)V

    .line 129
    :goto_0
    return-void
.end method
