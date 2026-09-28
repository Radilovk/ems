.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;
.super Ljava/lang/Object;
.source "XiaomiBand.java"


# static fields
.field public static final AUTO:I = 0x0

.field public static final BLE:I = 0x1

.field public static final ROLE_CONTROL:I = 0x2

.field public static final ROLE_HR:I = 0x1

.field public static final SPP:I = 0x2

.field private static controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

.field private static current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 148
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 155
    :cond_f
    :goto_f
    return-object v0

    .line 152
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_f

    .line 154
    :catch_21
    move-exception v1

    goto :goto_f
.end method

.method public static control()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 63
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    goto :goto_4
.end method

.method public static getBuildTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 105
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    instance-of v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 106
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getBuildTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static isDual()Z
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isKnownModel(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 126
    if-nez p0, :cond_4

    .line 130
    :cond_3
    :goto_3
    return v0

    .line 129
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "^Xiaomi( Smart)? Band \\d+( Active| Pro| NFC)?( [0-9A-Za-z]{4})?$"

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "^Redmi (Smart )?Band.*"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "^Mi Smart Band.*"

    .line 133
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
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    if-nez v0, :cond_a

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 34
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    return-object v0
.end method

.method public static modelLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    if-nez p0, :cond_5

    .line 139
    const-string v0, ""

    .line 143
    :goto_4
    return-object v0

    .line 141
    :cond_5
    const-string v0, "(Band \\d+( Pro| Active)?|Watch [^ ]+( Active| Lite)?)"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 143
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

    .line 161
    if-nez p0, :cond_7

    move-object v0, v1

    .line 180
    :goto_6
    return-object v0

    .line 164
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

    .line 165
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 166
    :cond_2f
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3e

    move-object v0, v1

    .line 169
    goto :goto_6

    .line 171
    :cond_3e
    new-array v2, v6, [B

    .line 172
    const/4 v3, 0x0

    :goto_41
    if-ge v3, v6, :cond_68

    .line 173
    mul-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 174
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 175
    if-ltz v4, :cond_5d

    if-gez v5, :cond_5f

    :cond_5d
    move-object v0, v1

    .line 176
    goto :goto_6

    .line 178
    :cond_5f
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_68
    move-object v0, v2

    .line 180
    goto :goto_6
.end method

.method public static select(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    if-nez p2, :cond_47

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_11
    move v0, v1

    .line 40
    :goto_12
    if-eqz v0, :cond_49

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    move-result-object v0

    .line 42
    :goto_18
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v3

    .line 43
    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    if-eqz v4, :cond_4e

    :goto_20
    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setRole(I)V

    .line 44
    if-eq v3, v0, :cond_44

    .line 46
    :try_start_25
    const-string v1, "idle"

    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "disconnected"

    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 47
    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_40} :catch_50

    .line 51
    :cond_40
    :goto_40
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 53
    :cond_44
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->current:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 54
    return-object v0

    :cond_47
    move v0, v2

    .line 39
    goto :goto_12

    .line 41
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    goto :goto_18

    :cond_4e
    move v1, v2

    .line 43
    goto :goto_20

    .line 49
    :catch_50
    move-exception v1

    goto :goto_40
.end method

.method public static selectControl(Landroid/content/Context;Ljava/lang/String;I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 76
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_25

    .line 77
    :cond_12
    if-eqz v3, :cond_1a

    .line 79
    :try_start_14
    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_56

    .line 82
    :goto_17
    invoke-interface {v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 84
    :cond_1a
    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setRole(I)V

    move-object v0, v1

    .line 101
    :goto_24
    return-object v0

    .line 88
    :cond_25
    if-eq p2, v5, :cond_33

    if-nez p2, :cond_34

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_33
    move v0, v2

    .line 89
    :cond_34
    if-eqz v0, :cond_51

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->getControl()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    move-result-object v0

    .line 91
    :goto_3a
    if-eqz v3, :cond_44

    if-eq v3, v0, :cond_44

    .line 93
    :try_start_3e
    invoke-interface {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->disconnect()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_58

    .line 96
    :goto_41
    invoke-interface {v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;)V

    .line 98
    :cond_44
    invoke-interface {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setRole(I)V

    .line 99
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->setRole(I)V

    .line 100
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->controlLink:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    goto :goto_24

    .line 90
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getControl()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v0

    goto :goto_3a

    .line 80
    :catch_56
    move-exception v2

    goto :goto_17

    .line 94
    :catch_58
    move-exception v4

    goto :goto_41
.end method

.method public static usesClassic(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 111
    if-nez p0, :cond_5

    .line 112
    const/4 v0, 0x0

    .line 121
    :cond_4
    :goto_4
    return v0

    .line 114
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "^Xiaomi Smart Band (9|10)( Pro| NFC)?( [0-9A-Fa-f]{4})?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    const-string v2, "^Xiaomi Smart Band 8 Pro( [0-9A-Fa-f]{4})?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 121
    const-string v0, "^Redmi Watch (4|5|5 Active|5 Lite)( [0-9A-Fa-f]{4})?$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4
.end method
