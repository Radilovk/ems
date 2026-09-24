.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;
.super Ljava/lang/Object;
.source "XiaomiBand.java"


# static fields
.field public static final AUTO:I = 0x0

.field public static final BLE:I = 0x1

.field public static final SPP:I = 0x2

.field private static current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 94
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 101
    :cond_f
    :goto_f
    return-object v0

    .line 98
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_f

    .line 100
    :catch_21
    move-exception v1

    goto :goto_f
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 52
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static isKnownModel(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p0, :cond_4

    .line 76
    :cond_3
    :goto_3
    return v0

    .line 75
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "^Xiaomi( Smart)? Band \\d+( Active| Pro| NFC)?( [0-9A-Za-z]{4})?$"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "^Redmi (Smart )?Band.*"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "^Mi Smart Band.*"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_26
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 28
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    return-object v0
.end method

.method public static modelLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    if-nez p0, :cond_5

    .line 85
    const-string v0, ""

    .line 89
    :goto_4
    return-object v0

    .line 87
    :cond_5
    const-string v0, "(Band \\d+( Pro| Active)?|Watch [^ ]+( Active| Lite)?)"

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1b
    const-string v0, ""

    goto :goto_4
.end method

.method static parseAuthKey(Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x10

    .line 107
    if-nez p0, :cond_7

    move-object v0, v1

    .line 126
    :goto_6
    return-object v0

    .line 110
    :cond_7
    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 112
    :cond_2f
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3e

    move-object v0, v1

    .line 115
    goto :goto_6

    .line 117
    :cond_3e
    new-array v2, v6, [B

    .line 118
    const/4 v3, 0x0

    :goto_41
    if-ge v3, v6, :cond_68

    .line 119
    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 120
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 121
    if-ltz v4, :cond_5d

    if-gez v5, :cond_5f

    :cond_5d
    move-object v0, v1

    .line 122
    goto :goto_6

    .line 124
    :cond_5f
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_68
    move-object v0, v2

    .line 126
    goto :goto_6
.end method

.method public static select(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 7

    .prologue
    .line 33
    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    if-nez p2, :cond_3e

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_f
    const/4 v0, 0x1

    .line 34
    :goto_10
    if-eqz v0, :cond_40

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    move-result-object v0

    .line 36
    :goto_16
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 37
    if-eq v1, v0, :cond_3b

    .line 39
    :try_start_1c
    const-string v2, "idle"

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "disconnected"

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 40
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_37} :catch_45

    .line 44
    :cond_37
    :goto_37
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 46
    :cond_3b
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 47
    return-object v0

    .line 33
    :cond_3e
    const/4 v0, 0x0

    goto :goto_10

    .line 35
    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    goto :goto_16

    .line 42
    :catch_45
    move-exception v2

    goto :goto_37
.end method

.method public static usesClassic(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 57
    if-nez p0, :cond_5

    .line 58
    const/4 v0, 0x0

    .line 67
    :cond_4
    :goto_4
    return v0

    .line 60
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "^Xiaomi Smart Band (9|10)( Pro| NFC)?( [0-9A-Fa-f]{4})?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 64
    const-string v2, "^Xiaomi Smart Band 8 Pro( [0-9A-Fa-f]{4})?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 67
    const-string v0, "^Redmi Watch (4|5|5 Active|5 Lite)( [0-9A-Fa-f]{4})?$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4
.end method
