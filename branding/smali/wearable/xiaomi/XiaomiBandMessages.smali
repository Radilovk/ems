.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;
.super Ljava/lang/Object;
.source "XiaomiBandMessages.java"


# static fields
.field static final AUTH_NONCE:I = 0x1a

.field static final AUTH_STEP3:I = 0x1b

.field static final AUTH_USERID:I = 0x5

.field static final HEALTH_RT_EVENT:I = 0x2f

.field static final HEALTH_RT_START:I = 0x2d

.field static final HEALTH_RT_STOP:I = 0x2e

.field static final HEALTH_USER_INFO:I = 0x0

.field static final MUSIC_BUTTON:I = 0x2

.field static final MUSIC_GET:I = 0x0

.field static final MUSIC_INFO:I = 0x1

.field static final SYS_BATTERY:I = 0x1

.field static final SYS_CLOCK:I = 0x3

.field static final SYS_DEVICE_INFO:I = 0x2

.field static final SYS_STATE_EVENT:I = 0x4f

.field static final SYS_STATE_GET:I = 0x4e

.field static final T_AUTH:I = 0x1

.field static final T_HEALTH:I = 0x8

.field static final T_MUSIC:I = 0x12

.field static final T_SYSTEM:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static authDeviceInfo()[B
    .registers 5

    .line 69
    const/4 v0, 0x5

    new-array v1, v0, [[B

    .line 70
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 71
    const/4 v3, 0x2

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 72
    const/4 v2, 0x3

    const-string v4, "XEMS"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 73
    const/4 v3, 0x4

    const/16 v4, 0xe0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v4

    aput-object v4, v1, v2

    .line 74
    const-string v2, "EN"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v3

    .line 69
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static authNonce([B)[B
    .registers 3

    .line 54
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p0

    .line 55
    const/16 v1, 0x1e

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    .line 56
    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    const/16 v1, 0x1a

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static authStep3([B[B)[B
    .registers 6

    .line 60
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 61
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 62
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p0

    aput-object p0, v1, v2

    .line 60
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 63
    const/16 p1, 0x20

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    .line 64
    const/4 p1, 0x3

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    const/16 p1, 0x1b

    invoke-static {v2, p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bytesField(Ljava/util/Map;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)[B"
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_f

    :cond_e
    move-object p0, v0

    .line 199
    :goto_f
    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-nez v1, :cond_21

    goto :goto_28

    .line 202
    :cond_21
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 200
    :cond_28
    :goto_28
    return-object v0
.end method

.method static clock()[B
    .registers 12

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 82
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    div-int/2addr v3, v2

    .line 83
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/2addr v5, v4

    div-int/2addr v5, v2

    .line 84
    const/4 v2, 0x3

    new-array v4, v2, [[B

    .line 85
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 86
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v9

    aput-object v9, v4, v6

    .line 87
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v9

    aput-object v9, v4, v7

    .line 84
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    .line 88
    const/4 v9, 0x4

    new-array v10, v9, [[B

    .line 89
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v11

    aput-object v11, v10, v8

    .line 90
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v7, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v11

    aput-object v11, v10, v6

    .line 91
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v11

    aput-object v11, v10, v7

    .line 92
    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v10, v2

    .line 88
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 93
    new-array v10, v2, [[B

    .line 94
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v3

    aput-object v3, v10, v8

    .line 95
    invoke-static {v7, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v3

    aput-object v3, v10, v6

    .line 96
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v10, v7

    .line 93
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 97
    new-array v3, v2, [[B

    .line 98
    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v4

    aput-object v4, v3, v8

    .line 99
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v3, v6

    .line 100
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v3, v7

    .line 97
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 102
    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 103
    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static command(II[B)[B
    .registers 7

    .line 45
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 46
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 47
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v1, v2

    .line 45
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 48
    if-eqz p2, :cond_25

    array-length p1, p2

    if-nez p1, :cond_1b

    goto :goto_25

    :cond_1b
    new-array p1, v0, [[B

    aput-object p0, p1, v3

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    :cond_25
    :goto_25
    return-object p0
.end method

.method static intField(Ljava/util/Map;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)I"
        }
    .end annotation

    .line 190
    if-eqz p0, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 191
    :goto_e
    if-eqz p0, :cond_2b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_20

    goto :goto_2b

    .line 194
    :cond_20
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 192
    :cond_2b
    :goto_2b
    const/4 p0, -0x1

    return p0
.end method

.method static mediaKey(Ljava/util/Map;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)[I"
        }
    .end annotation

    .line 180
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 181
    if-nez p0, :cond_f

    .line 182
    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_f
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v4

    aput v4, v1, v2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    aput p0, v1, v3

    return-object v1
.end method

.method static musicInfo(IILjava/lang/String;Ljava/lang/String;II)[B
    .registers 10

    .line 160
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 161
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 162
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v1, v2

    .line 160
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 163
    if-eqz p2, :cond_26

    .line 164
    new-array p1, v0, [[B

    aput-object p0, p1, v3

    const/4 p0, 0x4

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 166
    :cond_26
    if-eqz p3, :cond_37

    .line 167
    new-array p1, v0, [[B

    aput-object p0, p1, v3

    const/4 p0, 0x5

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 169
    :cond_37
    if-lez p5, :cond_58

    .line 170
    const/4 p1, 0x3

    new-array p1, p1, [[B

    aput-object p0, p1, v3

    const/4 p0, 0x6

    .line 171
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, p1, v2

    const/4 p0, 0x7

    .line 172
    invoke-static {p0, p5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, p1, v0

    .line 170
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 174
    :cond_58
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    .line 175
    const/16 p1, 0x12

    const/16 p2, 0x14

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    invoke-static {p1, v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static request(II)[B
    .registers 3

    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static sub(Ljava/util/Map;I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 206
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object p0

    .line 207
    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method static userInfo(Landroid/content/Context;)[B
    .registers 15

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 122
    const/16 v0, 0x23

    const/16 v1, 0x4b

    const/4 v2, 0x0

    if-eqz p0, :cond_38

    .line 123
    :try_start_b
    const-string v3, "ai_session"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 124
    const-string v3, "weight_kg"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    const-string v3, "age"

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    const-string v3, "FEMALE"

    const-string v4, "sex"

    const-string v5, "MALE"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_34

    .line 127
    :try_start_2b
    const-string v4, "height_cm"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    goto :goto_3a

    .line 129
    :catchall_32
    move-exception p0

    goto :goto_36

    :catchall_34
    move-exception p0

    const/4 v3, 0x0

    :goto_36
    const/4 p0, 0x0

    goto :goto_3b

    .line 122
    :cond_38
    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 130
    :goto_3a
    nop

    .line 131
    :goto_3b
    const/16 v4, 0x78

    if-lt p0, v4, :cond_43

    const/16 v4, 0xe6

    if-le p0, v4, :cond_4a

    .line 132
    :cond_43
    if-eqz v3, :cond_48

    const/16 p0, 0xa5

    goto :goto_4a

    :cond_48
    const/16 p0, 0xb2

    .line 134
    :cond_4a
    :goto_4a
    const/16 v4, 0xfa

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v4, 0x1e

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 135
    const/16 v5, 0x5f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v5, 0xa

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v0

    .line 137
    const-wide/high16 v8, 0x406a000000000000L    # 208.0

    const-wide v10, 0x3fe6666666666666L    # 0.7

    int-to-double v12, v0

    mul-double v12, v12, v10

    sub-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 138
    const/16 v8, 0x9

    new-array v9, v8, [[B

    .line 139
    invoke-static {v7, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v9, v2

    int-to-float p0, v1

    .line 140
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object p0

    aput-object p0, v9, v7

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit8 v6, v6, 0x65

    .line 141
    const/4 p0, 0x3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v9, v1

    .line 142
    if-eqz v3, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 v1, 0x1

    :goto_9d
    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v9, p0

    .line 143
    const/4 p0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v9, v3

    const/16 v0, 0x1f4

    .line 144
    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v9, p0

    const/16 p0, 0x1f40

    .line 145
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v9, v1

    const/16 p0, 0xc

    .line 146
    invoke-static {v8, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    aput-object p0, v9, v0

    const/16 p0, 0xb

    .line 147
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p0

    const/16 v0, 0x8

    aput-object p0, v9, v0

    .line 138
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 148
    invoke-static {v7, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    .line 149
    invoke-static {v5, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p0

    return-object p0
.end method
