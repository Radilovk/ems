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

    .line 21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method onCommandAcked()V
    .registers 1

    .line 53
    return-void
.end method

.method reset()V
    .registers 2

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
    .registers 6

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 37
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v3, "init"

    const-string v4, "post-auth start"

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitProto([B)V

    .line 39
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 40
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const/4 v2, 0x2

    invoke-static {v2, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitProto([B)V

    .line 42
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 43
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->userInfo(Landroid/content/Context;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitProto([B)V

    .line 44
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->pollStatus()V

    .line 45
    const/4 v1, 0x3

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 46
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "post-auth queued"

    invoke-virtual {v0, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onPostAuthInitComplete()V

    .line 49
    return-void
.end method
