.class public Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;
.super Ljava/lang/Object;
.source "BleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ble/BleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryWrapper"
.end annotation


# instance fields
.field public count:I

.field public protocol:I

.field public responseProtocol:I

.field public timer:Ljava/util/Timer;

.field public wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ble/BleController$WrapperData;)V
    .locals 2
    .param p1, "data"    # Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->count:I

    .line 104
    if-nez p1, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    .line 108
    iget-object v0, p1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->protocol:I

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v0, v0, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->responseProtocol:I

    .line 110
    invoke-direct {p0}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->startScheduleAction()V

    .line 111
    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;

    .line 96
    invoke-direct {p0}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->startScheduleAction()V

    return-void
.end method

.method private startScheduleAction()V
    .locals 3

    .line 114
    new-instance v0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper$1;-><init>(Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->timer:Ljava/util/Timer;

    .line 131
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u505c\u6b62\u5b9a\u65f6\u5668  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->wrapperData:Lcom/isaigu/gymapp/ble/BleController$WrapperData;

    iget-object v1, v1, Lcom/isaigu/gymapp/ble/BleController$WrapperData;->data:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->timer:Ljava/util/Timer;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/TimerUtils;->stopTimer(Ljava/util/Timer;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/ble/BleController$RetryWrapper;->timer:Ljava/util/Timer;

    .line 137
    return-void
.end method
