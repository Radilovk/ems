.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWorkout;
.super Ljava/lang/Object;
.source "XiaomiBandWorkout.java"


# static fields
.field public static final CMD_OPEN:I = 0x1e

.field public static final CMD_STATUS:I = 0x1a

.field public static final FINISH:I = 0x3

.field public static final PAUSE:I = 0x1

.field public static final RESUME:I = 0x2

.field public static final SPORT_FREE:I = 0x8

.field public static final SPORT_HIIT:I = 0x10

.field public static final SPORT_INDOOR_RUN:I = 0x3

.field public static final SPORT_STRENGTH:I = 0x134

.field public static final START:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnected()Z
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static open(I)Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 41
    new-array v0, v3, [[B

    const/4 v1, 0x0

    .line 42
    invoke-static {v4, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    invoke-static {v3, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 41
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 44
    const/16 v1, 0x19

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 45
    const/16 v1, 0x8

    const/16 v2, 0x1e

    const/16 v3, 0xa

    .line 46
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 45
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWorkout;->send([B)Z

    move-result v0

    return v0
.end method

.method private static send([B)Z
    .registers 3

    .prologue
    .line 62
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-nez v1, :cond_e

    .line 64
    :cond_c
    const/4 v0, 0x0

    .line 67
    :goto_d
    return v0

    .line 66
    :cond_e
    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 67
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static status(II)Z
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51
    new-array v1, v7, [[B

    const/4 v2, 0x0

    .line 52
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 53
    invoke-static {v6, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v4

    .line 54
    invoke-static {v7, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v5

    const/4 v0, 0x6

    .line 55
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v1, v6

    .line 51
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 56
    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 57
    const/16 v1, 0x8

    const/16 v2, 0x1a

    const/16 v3, 0xa

    .line 58
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 57
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWorkout;->send([B)Z

    move-result v0

    return v0
.end method
