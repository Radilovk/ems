.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;
.super Ljava/lang/Object;
.source "XiaomiBandStatus.java"


# static fields
.field private static asleep:I

.field private static batteryPercent:I

.field private static charging:I

.field private static firmware:Ljava/lang/String;

.field private static model:Ljava/lang/String;

.field private static serial:Ljava/lang/String;

.field private static updatedMs:J

.field private static worn:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bool(Ljava/util/Map;II)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;II)I"
        }
    .end annotation

    .line 136
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 137
    if-gez p0, :cond_7

    goto :goto_c

    :cond_7
    if-eqz p0, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x2

    :goto_c
    return p2
.end method

.method public static getBatteryPercent()I
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    return v0
.end method

.method public static getFirmware()Ljava/lang/String;
    .registers 1

    .line 58
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 1

    .line 62
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 1

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public static getUpdatedMs()J
    .registers 2

    .line 70
    sget-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->updatedMs:J

    return-wide v0
.end method

.method public static isAsleep()Z
    .registers 2

    .line 54
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public static isCharging()Z
    .registers 2

    .line 50
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public static isKnownNotWorn()Z
    .registers 2

    .line 42
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isKnownWorn()Z
    .registers 2

    .line 46
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method static onSystemCommand(ILjava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 75
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p1

    .line 76
    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 77
    return v1

    .line 79
    :cond_9
    const/16 v2, 0x64

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_8f

    const/4 v5, 0x3

    if-eq p0, v3, :cond_6f

    const/16 v6, 0x4e

    if-eq p0, v6, :cond_40

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1b

    .line 127
    return v1

    .line 116
    :cond_1b
    const/16 p0, 0x31

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 117
    if-nez p0, :cond_24

    .line 118
    return v1

    .line 120
    :cond_24
    sget p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    invoke-static {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->tri(Ljava/util/Map;II)I

    move-result p1

    sput p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    .line 121
    sget p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    invoke-static {p0, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->tri(Ljava/util/Map;II)I

    move-result p1

    sput p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    .line 122
    sget p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    invoke-static {p0, v5, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->tri(Ljava/util/Map;II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    .line 123
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    .line 124
    return v4

    .line 100
    :cond_40
    const/16 p0, 0x30

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 101
    if-nez p0, :cond_49

    .line 102
    return v1

    .line 104
    :cond_49
    sget p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    invoke-static {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->bool(Ljava/util/Map;II)I

    move-result p1

    sput p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    .line 105
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p1

    .line 106
    if-ltz p1, :cond_5b

    if-gt p1, v2, :cond_5b

    .line 107
    sput p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 109
    :cond_5b
    sget p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    invoke-static {p0, v5, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->bool(Ljava/util/Map;II)I

    move-result p1

    sput p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    .line 110
    sget p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->bool(Ljava/util/Map;II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    .line 112
    return v4

    .line 91
    :cond_6f
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 92
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    invoke-static {p0, v4, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    .line 93
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    invoke-static {p0, v3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    .line 94
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    invoke-static {p0, v5, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    .line 96
    return v4

    .line 81
    :cond_8f
    nop

    .line 82
    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 81
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 83
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 84
    if-ltz p0, :cond_a2

    if-gt p0, v2, :cond_a2

    .line 85
    sput p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 87
    :cond_a2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    .line 88
    return v4
.end method

.method public static reset()V
    .registers 2

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    .line 28
    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    .line 29
    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    .line 32
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->updatedMs:J

    .line 34
    return-void
.end method

.method private static str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 146
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object p0

    .line 147
    if-eqz p0, :cond_14

    array-length p1, p0

    if-nez p1, :cond_a

    goto :goto_14

    .line 151
    :cond_a
    :try_start_a
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    return-object p1

    .line 152
    :catchall_12
    move-exception p0

    .line 153
    return-object p2

    .line 148
    :cond_14
    :goto_14
    return-object p2
.end method

.method private static touch()V
    .registers 2

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->updatedMs:J

    .line 133
    return-void
.end method

.method private static tri(Ljava/util/Map;II)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;II)I"
        }
    .end annotation

    .line 141
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 142
    const/4 p1, 0x1

    if-eq p0, p1, :cond_a

    const/4 p1, 0x2

    if-ne p0, p1, :cond_b

    :cond_a
    move p2, p0

    :cond_b
    return p2
.end method
