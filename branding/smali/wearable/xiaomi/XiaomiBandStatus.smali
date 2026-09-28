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

    .prologue
    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bool(Ljava/util/Map;II)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;II)I"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 137
    if-gez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    if-eqz v0, :cond_b

    const/4 p2, 0x1

    goto :goto_6

    :cond_b
    const/4 p2, 0x2

    goto :goto_6
.end method

.method public static getBatteryPercent()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    return v0
.end method

.method public static getFirmware()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public static getUpdatedMs()J
    .registers 2

    .prologue
    .line 70
    sget-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->updatedMs:J

    return-wide v0
.end method

.method public static isAsleep()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 54
    sget v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isCharging()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 50
    sget v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isKnownNotWorn()Z
    .registers 2

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isKnownWorn()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 46
    sget v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static onSystemCommand(ILjava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-static {p1, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v2

    .line 76
    if-nez v2, :cond_c

    .line 127
    :cond_b
    :goto_b
    return v0

    .line 79
    :cond_c
    sparse-switch p0, :sswitch_data_a2

    goto :goto_b

    .line 82
    :sswitch_10
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 81
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 83
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 84
    if-ltz v0, :cond_24

    const/16 v2, 0x64

    if-gt v0, v2, :cond_24

    .line 85
    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 87
    :cond_24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    move v0, v1

    .line 88
    goto :goto_b

    .line 91
    :sswitch_29
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 92
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    .line 93
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    .line 94
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    move v0, v1

    .line 96
    goto :goto_b

    .line 100
    :sswitch_4a
    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_b

    .line 104
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->bool(Ljava/util/Map;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    .line 105
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 106
    if-ltz v0, :cond_66

    const/16 v3, 0x64

    if-gt v0, v3, :cond_66

    .line 107
    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 109
    :cond_66
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    invoke-static {v2, v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->bool(Ljava/util/Map;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    .line 110
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    invoke-static {v2, v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->bool(Ljava/util/Map;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    move v0, v1

    .line 112
    goto :goto_b

    .line 116
    :sswitch_7b
    const/16 v3, 0x31

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_b

    .line 120
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->tri(Ljava/util/Map;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    .line 121
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->tri(Ljava/util/Map;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    .line 122
    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    invoke-static {v2, v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->tri(Ljava/util/Map;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    .line 123
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->touch()V

    move v0, v1

    .line 124
    goto/16 :goto_b

    .line 79
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x4e -> :sswitch_4a
        0x4f -> :sswitch_7b
    .end sparse-switch
.end method

.method public static reset()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->batteryPercent:I

    .line 27
    sput v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->worn:I

    .line 28
    sput v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->charging:I

    .line 29
    sput v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->asleep:I

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->firmware:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->model:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->serial:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->updatedMs:J

    .line 34
    return-void
.end method

.method private static str(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/String;
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
            ">;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 147
    if-eqz v1, :cond_9

    array-length v0, v1

    if-nez v0, :cond_a

    .line 153
    :cond_9
    :goto_9
    return-object p2

    .line 151
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_13

    move-object p2, v0

    goto :goto_9

    .line 152
    :catch_13
    move-exception v0

    goto :goto_9
.end method

.method private static touch()V
    .registers 2

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->updatedMs:J

    .line 133
    return-void
.end method

.method private static tri(Ljava/util/Map;II)I
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
            ">;>;II)I"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 142
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_a
    move p2, v0

    :cond_b
    return p2
.end method
