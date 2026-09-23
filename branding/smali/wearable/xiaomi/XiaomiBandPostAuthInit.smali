.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;
.super Ljava/lang/Object;
.source "XiaomiBandPostAuthInit.java"


# static fields
.field private static final HEALTH_CMD_SET_USER_INFO:I = 0x0

.field private static final HEALTH_CMD_TYPE:I = 0x8

.field private static final STEP_CLOCK:I = 0x0

.field private static final STEP_DEVICE_INFO:I = 0x1

.field private static final STEP_DONE:I = 0x3

.field private static final STEP_USER_INFO:I = 0x2

.field private static final SYSTEM_CMD_CLOCK:I = 0x3

.field private static final SYSTEM_CMD_DEVICE_INFO:I = 0x2

.field private static final SYSTEM_CMD_TYPE:I = 0x2


# instance fields
.field private active:Z

.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

.field private step:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 26
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 27
    return-void
.end method

.method private sendClockSync()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "clock sync"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 66
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0xf

    .line 67
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0xf

    .line 68
    new-array v4, v9, [[B

    .line 69
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v8, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v5

    aput-object v5, v4, v10

    .line 70
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v7, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x5

    .line 71
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v9, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v5

    aput-object v5, v4, v7

    .line 68
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    .line 72
    new-array v5, v11, [[B

    const/16 v6, 0xb

    .line 73
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v5, v10

    const/16 v6, 0xc

    .line 74
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v7, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0xd

    .line 75
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v9, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v5, v7

    const/16 v6, 0xe

    .line 76
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v5, v9

    .line 72
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 77
    new-array v5, v9, [[B

    .line 78
    invoke-static {v8, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v2

    aput-object v2, v5, v10

    .line 79
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v2

    aput-object v2, v5, v8

    .line 80
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v5, v7

    .line 77
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 81
    new-array v2, v9, [[B

    .line 82
    invoke-static {v8, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v3

    aput-object v3, v2, v10

    .line 83
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v2, v8

    .line 84
    invoke-static {v9, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v2, v7

    .line 81
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 85
    invoke-static {v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1, v7, v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 87
    return-void
.end method

.method private sendDeviceInfoRequest()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "device info"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 92
    return-void
.end method

.method private sendUserInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "setUserInfo"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x9

    new-array v0, v0, [[B

    const/16 v1, 0xaf

    .line 97
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/high16 v1, 0x42960000    # 75.0f

    .line 98
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x12fa6c5

    .line 99
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v3

    .line 100
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0xaf

    .line 101
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/16 v3, 0x1f4

    .line 102
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/16 v3, 0x1f40

    .line 103
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/16 v3, 0xc

    .line 104
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb

    const/16 v3, 0x1e

    .line 105
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 106
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const/16 v2, 0x8

    const/16 v3, 0xa

    .line 108
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 107
    invoke-virtual {v1, v2, v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 109
    return-void
.end method


# virtual methods
.method isComplete()Z
    .registers 3

    .prologue
    .line 30
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
    .line 60
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 36
    return-void
.end method

.method start()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 45
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "post-auth start"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->sendClockSync()V

    .line 48
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 49
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->sendDeviceInfoRequest()V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->sendUserInfo()V

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 53
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "post-auth queued"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onPostAuthInitComplete()V

    .line 56
    return-void
.end method
