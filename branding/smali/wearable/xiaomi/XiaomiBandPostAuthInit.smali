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

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "clock sync"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 71
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    div-int/2addr v3, v2

    .line 72
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v4, v4, 0x3c

    div-int/2addr v4, v2

    .line 73
    const/4 v2, 0x3

    new-array v5, v2, [[B

    .line 74
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 75
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v9

    aput-object v9, v5, v6

    .line 76
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v9

    aput-object v9, v5, v7

    .line 73
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v5

    .line 77
    const/4 v9, 0x4

    new-array v10, v9, [[B

    .line 78
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v11

    aput-object v11, v10, v8

    .line 79
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v11

    aput-object v11, v10, v6

    .line 80
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v11

    aput-object v11, v10, v7

    .line 81
    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v10, v2

    .line 77
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 82
    new-array v10, v2, [[B

    .line 83
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v3

    aput-object v3, v10, v8

    .line 84
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v3

    aput-object v3, v10, v6

    .line 85
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v10, v7

    .line 82
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 86
    new-array v3, v2, [[B

    .line 87
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v4

    aput-object v4, v3, v8

    .line 88
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v3, v6

    .line 89
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v3, v7

    .line 86
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 90
    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v1, v7, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 92
    return-void
.end method

.method private sendDeviceInfoRequest()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "device info"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 97
    return-void
.end method

.method private sendUserInfo()V
    .registers 9

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "setUserInfo"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/16 v0, 0x9

    new-array v1, v0, [[B

    .line 102
    const/4 v2, 0x1

    const/16 v3, 0xaf

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 103
    const/4 v4, 0x2

    const/high16 v6, 0x42960000    # 75.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v6

    aput-object v6, v1, v2

    .line 104
    const/4 v6, 0x3

    const v7, 0x12fa6c5

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v7

    aput-object v7, v1, v4

    .line 105
    const/4 v4, 0x4

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v7

    aput-object v7, v1, v6

    .line 106
    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    aput-object v3, v1, v4

    .line 107
    const/4 v3, 0x6

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v6

    .line 108
    const/4 v4, 0x7

    const/16 v6, 0x1f40

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v1, v3

    .line 109
    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v4

    .line 110
    const/16 v0, 0xb

    const/16 v3, 0x1e

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v1, v3

    .line 101
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 111
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    .line 113
    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 112
    invoke-virtual {v1, v3, v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->sendInitCommand(II[B)V

    .line 114
    return-void
.end method


# virtual methods
.method isComplete()Z
    .registers 3

    .line 30
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
    .registers 4

    .line 46
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    if-nez v0, :cond_5

    .line 47
    return-void

    .line 49
    :cond_5
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 50
    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 51
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->sendDeviceInfoRequest()V

    .line 52
    return-void

    .line 54
    :cond_10
    const/4 v2, 0x2

    if-ne v0, v1, :cond_19

    .line 55
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 56
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->sendUserInfo()V

    .line 57
    return-void

    .line 59
    :cond_19
    if-ne v0, v2, :cond_2f

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "post-auth done"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->onPostAuthInitComplete()V

    .line 65
    :cond_2f
    return-void
.end method

.method reset()V
    .registers 2

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
    .registers 4

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->step:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->active:Z

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    const-string v1, "init"

    const-string v2, "post-auth start"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit;->sendClockSync()V

    .line 43
    return-void
.end method
