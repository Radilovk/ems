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

.field static final SYS_BATTERY:I = 0x1

.field static final SYS_CLOCK:I = 0x3

.field static final SYS_DEVICE_INFO:I = 0x2

.field static final SYS_STATE_EVENT:I = 0x4f

.field static final SYS_STATE_GET:I = 0x4e

.field static final T_AUTH:I = 0x1

.field static final T_HEALTH:I = 0x8

.field static final T_SYSTEM:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static authDeviceInfo()[B
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [[B

    .line 65
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 66
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "XEMS"

    .line 67
    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xe0

    .line 68
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "EN"

    .line 69
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v6

    .line 64
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static authNonce([B)[B
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    .line 50
    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 51
    const/16 v1, 0x1a

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static authStep3([B[B)[B
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 55
    new-array v0, v4, [[B

    const/4 v1, 0x0

    .line 56
    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v1

    aput-object v1, v0, v3

    .line 55
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 58
    const/16 v1, 0x20

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 59
    const/16 v1, 0x1b

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static bytesField(Ljava/util/Map;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)[B"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 158
    if-eqz p0, :cond_20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    :goto_e
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [B

    if-nez v2, :cond_22

    :cond_1e
    move-object v0, v1

    .line 162
    :goto_1f
    return-object v0

    :cond_20
    move-object v0, v1

    .line 158
    goto :goto_e

    .line 162
    :cond_22
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_1f
.end method

.method static clock()[B
    .registers 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 77
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    div-int/lit8 v2, v2, 0xf

    .line 78
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xf

    .line 79
    new-array v4, v9, [[B

    .line 80
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v8, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v5

    aput-object v5, v4, v10

    .line 81
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v7, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x5

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v9, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v5

    aput-object v5, v4, v7

    .line 79
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    .line 83
    new-array v5, v11, [[B

    const/16 v6, 0xb

    .line 84
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v8, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v5, v10

    const/16 v6, 0xc

    .line 85
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v7, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v5, v8

    const/16 v6, 0xd

    .line 86
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v9, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v6

    aput-object v6, v5, v7

    const/16 v6, 0xe

    .line 87
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v5, v9

    .line 83
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 88
    new-array v5, v9, [[B

    .line 89
    invoke-static {v8, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v2

    aput-object v2, v5, v10

    .line 90
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldSint32(II)[B

    move-result-object v2

    aput-object v2, v5, v8

    .line 91
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v5, v7

    .line 88
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 92
    new-array v2, v9, [[B

    .line 93
    invoke-static {v8, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v3

    aput-object v3, v2, v10

    .line 94
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v2, v8

    .line 95
    invoke-static {v9, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    aput-object v0, v2, v7

    .line 92
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 97
    invoke-static {v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 98
    invoke-static {v11, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    invoke-static {v7, v9, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static command(II[B)[B
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 40
    new-array v0, v3, [[B

    .line 41
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 42
    invoke-static {v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 40
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 43
    if-eqz p2, :cond_1a

    array-length v1, p2

    if-nez v1, :cond_1b

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    new-array v1, v3, [[B

    aput-object v0, v1, v4

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    goto :goto_1a
.end method

.method static intField(Ljava/util/Map;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    if-eqz p0, :cond_1f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    :goto_d
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_21

    .line 152
    :cond_1d
    const/4 v0, -0x1

    .line 154
    :goto_1e
    return v0

    .line 150
    :cond_1f
    const/4 v0, 0x0

    goto :goto_d

    .line 154
    :cond_21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1e
.end method

.method static request(II)[B
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method static sub(Ljava/util/Map;I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 167
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static userInfo(Landroid/content/Context;)[B
    .registers 13

    .prologue
    .line 112
    const/16 v3, 0x4b

    .line 113
    const/16 v2, 0x23

    .line 114
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x0

    .line 117
    if-eqz p0, :cond_34

    .line 118
    :try_start_8
    const-string v4, "ai_session"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 119
    const-string v5, "weight_kg"

    const/16 v6, 0x4b

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 120
    const-string v5, "age"

    const/16 v6, 0x23

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 121
    const-string v5, "FEMALE"

    const-string v6, "sex"

    const-string v7, "MALE"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 122
    const-string v5, "height_cm"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_33} :catch_ed

    move-result v0

    .line 126
    :cond_34
    :goto_34
    const/16 v4, 0x78

    if-lt v0, v4, :cond_3c

    const/16 v4, 0xe6

    if-le v0, v4, :cond_40

    .line 127
    :cond_3c
    if-eqz v1, :cond_e7

    const/16 v0, 0xa5

    .line 129
    :cond_40
    :goto_40
    const/16 v4, 0x1e

    const/16 v5, 0xfa

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 130
    const/16 v4, 0xa

    const/16 v5, 0x5f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v2

    .line 132
    const-wide/high16 v6, 0x406a000000000000L    # 208.0

    const-wide v8, 0x3fe6666666666666L    # 0.7

    int-to-double v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    .line 133
    const/16 v5, 0x9

    new-array v5, v5, [[B

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 134
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/4 v6, 0x2

    int-to-float v3, v3

    .line 135
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldFloat(IF)[B

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x2

    const/4 v3, 0x3

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0x65

    .line 136
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 137
    if-eqz v1, :cond_eb

    const/4 v0, 0x2

    :goto_97
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x4

    const/4 v1, 0x5

    .line 138
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/16 v2, 0x1f4

    .line 139
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const/4 v1, 0x7

    const/16 v2, 0x1f40

    .line 140
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x7

    const/16 v1, 0x9

    const/16 v2, 0xc

    .line 141
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x8

    const/16 v1, 0xb

    const/16 v2, 0x1e

    .line 142
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v5, v0

    .line 133
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 144
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    return-object v0

    .line 127
    :cond_e7
    const/16 v0, 0xb2

    goto/16 :goto_40

    .line 137
    :cond_eb
    const/4 v0, 0x1

    goto :goto_97

    .line 124
    :catch_ed
    move-exception v4

    goto/16 :goto_34
.end method
