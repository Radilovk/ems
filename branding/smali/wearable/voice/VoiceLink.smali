.class public final Lcom/isaigu/gymapp/wearable/voice/VoiceLink;
.super Ljava/lang/Object;
.source "VoiceLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Gatt;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$StopScan;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Retry;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Pump;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Event;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Found;
    }
.end annotation


# static fields
.field static final CCCD:Ljava/util/UUID;

.field public static final CONNECTING:I = 0x2

.field public static final NAME:Ljava/lang/String; = "XEMS Voice"

.field public static final OFF:I = 0x0

.field static final OP_TIMEOUT_MS:J = 0x5dcL

.field static final PREFS:Ljava/lang/String; = "xems_voice"

.field public static final READY:I = 0x3

.field static final RETRY_MS:J = 0xbb8L

.field static final RX:Ljava/util/UUID;

.field public static final SEARCHING:I = 0x1

.field static final SERVICE:Ljava/util/UUID;

.field static final TX:Ljava/util/UUID;

.field static app:Landroid/content/Context;

.field static busy:Z

.field public static examples:I

.field static gatt:Landroid/bluetooth/BluetoothGatt;

.field static final in:Ljava/lang/StringBuilder;

.field static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;",
            ">;"
        }
    .end annotation
.end field

.field static final main:Landroid/os/Handler;

.field static opToken:I

.field static final out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field static scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

.field static state:I

.field public static version:I

.field static wr:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 40
    const-string v0, "6e400001-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->SERVICE:Ljava/util/UUID;

    .line 41
    const-string v0, "6e400002-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->RX:Ljava/util/UUID;

    .line 42
    const-string v0, "6e400003-b5a3-f393-e0a9-e50e24dcca9e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->TX:Ljava/util/UUID;

    .line 43
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->CCCD:Ljava/util/UUID;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->out:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->listeners:Ljava/util/List;

    .line 60
    sput v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->version:I

    sput v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->examples:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_d
    return-void
.end method

.method static closeGatt()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 216
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 217
    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 218
    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 219
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->out:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 220
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->busy:Z

    .line 221
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 222
    if-eqz v0, :cond_1c

    .line 224
    :try_start_16
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_1d

    .line 228
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1f

    .line 232
    :cond_1c
    :goto_1c
    return-void

    .line 225
    :catch_1d
    move-exception v1

    goto :goto_19

    .line 229
    :catch_1f
    move-exception v0

    goto :goto_1c
.end method

.method static connect(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->closeGatt()V

    .line 153
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 155
    :try_start_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3e

    .line 156
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Gatt;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Gatt;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 160
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_6b

    const-string v0, " (auto)"

    :goto_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 166
    :goto_3d
    return-void

    .line 158
    :cond_3e
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Gatt;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Gatt;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4b} :catch_4c

    goto :goto_1b

    .line 161
    :catch_4c
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    goto :goto_3d

    .line 160
    :cond_6b
    :try_start_6b
    const-string v0, ""
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6d} :catch_4c

    goto :goto_32
.end method

.method static connectKnown()V
    .registers 4

    .prologue
    .line 140
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_11

    .line 149
    :cond_10
    :goto_10
    return-void

    .line 145
    :cond_11
    :try_start_11
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mac"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->connect(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_27} :catch_28

    goto :goto_10

    .line 146
    :catch_28
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "known: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static find(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    .line 106
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 113
    :cond_10
    :goto_10
    return-void

    .line 109
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->known(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->connectKnown()V

    .line 112
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->startScan()V

    goto :goto_10
.end method

.method public static forget(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 117
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mac"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->closeGatt()V

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 120
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->find(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public static known(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    const-string v0, "voice"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method static nameOf(Landroid/bluetooth/BluetoothDevice;[B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 349
    .line 351
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v0

    .line 354
    :goto_5
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 368
    :goto_d
    return-object v0

    .line 352
    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_5

    .line 357
    :cond_11
    const/4 v0, 0x0

    move v2, v0

    :goto_13
    if-eqz p1, :cond_25

    add-int/lit8 v0, v2, 0x1

    array-length v3, p1

    if-ge v0, v3, :cond_25

    .line 358
    aget-byte v0, p1, v2

    and-int/lit16 v3, v0, 0xff

    .line 359
    if-eqz v3, :cond_25

    add-int v0, v2, v3

    array-length v4, p1

    if-lt v0, v4, :cond_27

    :cond_25
    move-object v0, v1

    .line 368
    goto :goto_d

    .line 362
    :cond_27
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 363
    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3f

    .line 364
    :cond_35
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, v2, 0x2

    add-int/lit8 v2, v3, -0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_d

    .line 366
    :cond_3f
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v2

    move v2, v0

    .line 367
    goto :goto_13
.end method

.method static onBytes([B)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 316
    array-length v2, p0

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_3b

    aget-byte v3, p0, v0

    .line 317
    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 318
    const/16 v4, 0xa

    if-eq v3, v4, :cond_12

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2b

    .line 319
    :cond_12
    sget-object v3, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_28

    .line 320
    sget-object v3, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onLine(Ljava/lang/String;)V

    .line 316
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 324
    :cond_2b
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0xc8

    if-ge v4, v5, :cond_28

    .line 325
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->in:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 328
    :cond_3b
    return-void
.end method

.method static onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    .prologue
    .line 251
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p0, v0, :cond_5

    .line 266
    :cond_4
    :goto_4
    return-void

    .line 254
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_24

    .line 256
    :try_start_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_4

    .line 257
    :catch_c
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 260
    :cond_24
    if-nez p2, :cond_4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->closeGatt()V

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 264
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Retry;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Retry;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method static onFound(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    .prologue
    .line 204
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    if-nez v0, :cond_5

    .line 213
    :cond_4
    :goto_4
    return-void

    .line 207
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->stopScan()V

    .line 208
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 211
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->connect(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_4
.end method

.method static onLine(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, -0x1

    .line 331
    const-string v0, "HELLO "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 332
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    array-length v0, v2

    if-le v0, v3, :cond_49

    aget-object v0, v2, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v0

    :goto_1a
    sput v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->version:I

    .line 334
    array-length v0, v2

    if-le v0, v4, :cond_25

    aget-object v0, v2, v4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->parse(Ljava/lang/String;)I

    move-result v1

    :cond_25
    sput v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->examples:I

    .line 338
    :cond_27
    :goto_27
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;

    .line 340
    :try_start_3e
    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;->onVoiceLine(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_32

    .line 341
    :catch_42
    move-exception v0

    .line 342
    const-string v2, "VoiceLink.line"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_49
    move v0, v1

    .line 333
    goto :goto_1a

    .line 335
    :cond_4b
    const-string v0, "CMD "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 336
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->onCommand(Ljava/lang/String;)V

    goto :goto_27

    .line 345
    :cond_60
    return-void
.end method

.method static onReady()V
    .registers 1

    .prologue
    .line 297
    const-string v0, "ready"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 299
    const-string v0, "mute 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 300
    const-string v0, "meter 0"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 301
    const-string v0, "ping"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 302
    const-string v0, "list"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->send(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method static onServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 269
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->SERVICE:Ljava/util/UUID;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_28

    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->RX:Ljava/util/UUID;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 271
    :goto_f
    if-eqz v2, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->TX:Ljava/util/UUID;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 272
    :cond_17
    if-eqz v1, :cond_1b

    if-nez v0, :cond_2a

    .line 273
    :cond_1b
    const-string v0, "no UART service"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->closeGatt()V

    .line 275
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 294
    :goto_27
    return-void

    :cond_28
    move-object v1, v0

    .line 270
    goto :goto_f

    .line 278
    :cond_2a
    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 280
    const/4 v1, 0x1

    :try_start_2d
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 281
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->CCCD:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_70

    .line 283
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 284
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 285
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->busy:Z

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;

    sget v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;-><init>(I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_58} :catch_59

    goto :goto_27

    .line 290
    :catch_59
    move-exception v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 293
    :cond_70
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onReady()V

    goto :goto_27
.end method

.method static onWriteDone()V
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->busy:Z

    .line 307
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    .line 308
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_16

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onReady()V

    .line 313
    :goto_15
    return-void

    .line 312
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->pump()V

    goto :goto_15
.end method

.method static parse(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 373
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 375
    :goto_8
    return v0

    .line 374
    :catch_9
    move-exception v0

    .line 375
    const/4 v0, -0x1

    goto :goto_8
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_voice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static pump()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 380
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->busy:Z

    if-nez v0, :cond_1b

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1b

    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1b

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->out:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 400
    :cond_1b
    :goto_1b
    return-void

    .line 383
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->out:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 386
    :try_start_24
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5b

    move v2, v3

    .line 387
    :goto_2f
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_5d

    const/4 v2, 0x2

    :goto_34
    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 389
    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    sget-object v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->wr:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_43} :catch_5f

    move-result v0

    .line 394
    :goto_44
    if-eqz v0, :cond_78

    .line 395
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->busy:Z

    .line 396
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;

    sget v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;-><init>(I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    :cond_5b
    move v2, v1

    .line 386
    goto :goto_2f

    :cond_5d
    move v2, v3

    .line 388
    goto :goto_34

    .line 391
    :catch_5f
    move-exception v0

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_44

    .line 398
    :cond_78
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Pump;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Pump;-><init>()V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b
.end method

.method public static removeListener(Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;)V
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public static resume(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->known(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->connectKnown()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 101
    :cond_1d
    :goto_1d
    return-void

    .line 98
    :catch_1e
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static send(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 124
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    .line 135
    :goto_6
    return-void

    .line 127
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move v0, v1

    .line 128
    :goto_1f
    array-length v3, v2

    if-ge v0, v3, :cond_37

    .line 129
    const/16 v3, 0x14

    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 130
    new-array v4, v3, [B

    .line 131
    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    sget-object v3, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->out:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x14

    goto :goto_1f

    .line 134
    :cond_37
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->pump()V

    goto :goto_6
.end method

.method static setState(I)V
    .registers 4

    .prologue
    .line 235
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    if-ne v0, p0, :cond_5

    .line 246
    :cond_4
    return-void

    .line 238
    :cond_5
    sput p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;

    .line 241
    :try_start_1e
    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Listener;->onVoiceState(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_12

    .line 242
    :catch_22
    move-exception v0

    .line 243
    const-string v2, "VoiceLink.state"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method static startScan()V
    .registers 4

    .prologue
    .line 169
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    if-eqz v0, :cond_5

    .line 187
    :cond_4
    :goto_4
    return-void

    .line 172
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    :try_start_11
    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    .line 178
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 179
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    if-nez v0, :cond_25

    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 182
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$StopScan;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$StopScan;-><init>()V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_32} :catch_33

    goto :goto_4

    .line 183
    :catch_33
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->log(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    goto :goto_4
.end method

.method public static state()I
    .registers 1

    .prologue
    .line 78
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    return v0
.end method

.method static stopScan()V
    .registers 2

    .prologue
    .line 190
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    .line 191
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->scan:Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;

    .line 192
    if-eqz v0, :cond_c

    .line 194
    :try_start_7
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Scan;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_16

    .line 198
    :cond_c
    :goto_c
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->setState(I)V

    .line 201
    :cond_15
    return-void

    .line 195
    :catch_16
    move-exception v0

    goto :goto_c
.end method
