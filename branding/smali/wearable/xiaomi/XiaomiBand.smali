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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 94
    const/4 p0, 0x0

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_21

    .line 98
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    return-object p0

    .line 96
    :cond_21
    :goto_21
    return-object p0

    .line 100
    :catchall_22
    move-exception p1

    .line 101
    return-object p0
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 52
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_11
    return-object v0
.end method

.method public static isKnownModel(Ljava/lang/String;)Z
    .registers 3

    .line 72
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 73
    return v0

    .line 75
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 77
    const-string v1, "^Xiaomi( Smart)? Band \\d+( Active| Pro| NFC)?( [0-9A-Za-z]{4})?$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 78
    const-string v1, "^Redmi (Smart )?Band.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 79
    const-string v1, "^Mi Smart Band.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_26
    const/4 v0, 0x1

    .line 76
    :cond_27
    return v0
.end method

.method public static link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 1

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

    .line 84
    const-string v0, ""

    if-nez p0, :cond_5

    .line 85
    return-object v0

    .line 87
    :cond_5
    nop

    .line 88
    const-string v1, "(Band \\d+( Pro| Active)?|Watch [^ ]+( Active| Lite)?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method static parseAuthKey(Ljava/lang/String;)[B
    .registers 7

    .line 107
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 108
    return-object v0

    .line 110
    :cond_4
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 111
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 112
    :cond_28
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_36

    .line 115
    return-object v0

    .line 117
    :cond_36
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 118
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_60

    .line 119
    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 120
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 121
    if-ltz v5, :cond_5f

    if-gez v4, :cond_56

    goto :goto_5f

    .line 124
    :cond_56
    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 122
    :cond_5f
    :goto_5f
    return-object v0

    .line 126
    :cond_60
    return-object v2
.end method

.method public static select(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 4

    .line 33
    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    if-nez p2, :cond_10

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    .line 34
    :goto_13
    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    move-result-object p0

    goto :goto_1e

    .line 35
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object p0

    .line 36
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object p1

    .line 37
    if-eq p1, p0, :cond_45

    .line 39
    :try_start_24
    const-string p2, "idle"

    invoke-interface {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    const-string p2, "disconnected"

    invoke-interface {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 40
    invoke-interface {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_40

    .line 43
    :cond_3f
    goto :goto_41

    .line 42
    :catchall_40
    move-exception p2

    .line 44
    :goto_41
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 46
    :cond_45
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 47
    return-object p0
.end method

.method public static usesClassic(Ljava/lang/String;)Z
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return p0

    .line 60
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 61
    const-string v0, "^Xiaomi Smart Band (9|10)( Pro| NFC)?( [0-9A-Fa-f]{4})?$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 62
    return v1

    .line 64
    :cond_12
    const-string v0, "^Xiaomi Smart Band 8 Pro( [0-9A-Fa-f]{4})?$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    return v1

    .line 67
    :cond_1b
    const-string v0, "^Redmi Watch (4|5|5 Active|5 Lite)( [0-9A-Fa-f]{4})?$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
