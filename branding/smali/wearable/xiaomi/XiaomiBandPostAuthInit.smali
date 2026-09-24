.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;
.super Ljava/lang/Object;
.source "XiaomiBandPostAuthInit.java"


# static fields
.field private static final STEP_CLOCK:I = 0x0

.field private static final STEP_DEVICE_INFO:I = 0x1

.field private static final STEP_DONE:I = 0x3

.field private static final STEP_USER_INFO:I = 0x2


# instance fields
.field private active:Z

.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

.field private step:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 17
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 18
    return-void
.end method


# virtual methods
.method isComplete()Z
    .registers 3

    .prologue
    .line 21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method onCommandAcked()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 27
    return-void
.end method

.method start()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 35
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 36
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "post-auth start"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitProto([B)V

    .line 39
    iput v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 40
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-static {v3, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitProto([B)V

    .line 42
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->userInfo(Landroid/content/Context;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitProto([B)V

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->pollStatus()V

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 46
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "post-auth queued"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onPostAuthInitComplete()V

    .line 49
    return-void
.end method
