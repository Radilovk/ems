.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.super Ljava/lang/Object;
.source "ScaleLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$LocCheck;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ByRssi;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;
    }
.end annotation


# static fields
.field static final BACKOFF_MS:J = 0x1d4c0L

.field static final BEAT_MS:J = 0x190L

.field public static final CONNECTING:I = 0x2

.field static final CONNECT_TIMEOUT_MS:J = 0x2710L

.field public static final DONE:I = 0x5

.field static final HELLO_WAIT_MS:J = 0x1f4L

.field public static final MEASURING:I = 0x4

.field public static final NO_BLUETOOTH:I = 0x6

.field public static final NO_LOCATION:I = 0x7

.field static final OP_TIMEOUT_MS:J = 0x5dcL

.field static final OTHER_SCALE_RSSI:I = -0x46

.field static final RAW_CAP:I = 0x190

.field static final RAW_S:I = 0xc8

.field public static final READY:I = 0x3

.field public static final SEARCHING:I = 0x1


# instance fields
.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field volatile adverts:I

.field final age:I

.field final app:Landroid/content/Context;

.field final asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

.field final asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

.field final backoff:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field beatToken:I

.field busy:Z

.field final clientId:J

.field closed:Z

.field connectToken:I

.field gatt:Landroid/bluetooth/BluetoothGatt;

.field gen:C

.field handshakeSent:Z

.field heard:Z

.field final heightCm:I

.field final lastKg:D

.field linked:Z

.field final listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

.field liveKg:D

.field liveStable:Z

.field locationOk:Z

.field final main:Landroid/os/Handler;

.field final male:Z

.field final nearby:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;",
            ">;"
        }
    .end annotation
.end field

.field final notScales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field oddLive:Z

.field opToken:I

.field final ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;",
            ">;"
        }
    .end annotation
.end field

.field rawLogged:I

.field replyIndex:I

.field results:I

.field scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

.field final senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

.field seq:I

.field state:I

.field usersSent:Z

.field write:Landroid/bluetooth/BluetoothGattCharacteristic;

.field xs:[I

.field final xsAsm:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

.field xsHelloSent:Z

.field final xsSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field xsSn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JZIIDLcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;)V
    .registers 13

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->backoff:Ljava/util/Map;

    .line 93
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    .line 94
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    .line 101
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    .line 102
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsAsm:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSeen:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationOk:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->init(Landroid/content/Context;)V

    .line 129
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    .line 130
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    .line 131
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    .line 132
    iput p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    .line 133
    const-wide/16 v0, 0x0

    cmpl-double v0, p7, v0

    if-lez v0, :cond_7a

    :goto_75
    iput-wide p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    .line 134
    iput-object p9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    .line 135
    return-void

    .line 133
    :cond_7a
    const-wide p7, 0x4051800000000000L    # 70.0

    goto :goto_75
.end method

.method static advName([B)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 413
    const/4 v1, 0x0

    :goto_2
    if-eqz p0, :cond_f

    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_f

    .line 414
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 415
    if-nez v2, :cond_10

    .line 428
    :cond_f
    :goto_f
    return-object v0

    .line 418
    :cond_10
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 419
    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3c

    :cond_1e
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    array-length v4, p0

    if-gt v3, v4, :cond_3c

    .line 421
    :try_start_24
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v1, "\u0000"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_3a} :catch_40

    move-result-object v0

    goto :goto_f

    .line 426
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 427
    goto :goto_2

    .line 422
    :catch_40
    move-exception v1

    goto :goto_f
.end method

.method static advertisesFfb0([B)Z
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const v7, 0xffb0

    const/4 v0, 0x1

    .line 383
    move v3, v1

    :goto_7
    if-eqz p0, :cond_1b

    add-int/lit8 v2, v3, 0x1

    array-length v4, p0

    if-ge v2, v4, :cond_1b

    .line 384
    aget-byte v2, p0, v3

    and-int/lit16 v4, v2, 0xff

    .line 385
    if-eqz v4, :cond_1b

    add-int v2, v3, v4

    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-lt v2, v5, :cond_1d

    :cond_1b
    move v0, v1

    .line 409
    :cond_1c
    return v0

    .line 388
    :cond_1d
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 389
    const/4 v5, 0x2

    if-eq v2, v5, :cond_28

    if-ne v2, v8, :cond_47

    .line 390
    :cond_28
    add-int/lit8 v2, v3, 0x2

    :goto_2a
    add-int/lit8 v5, v2, 0x1

    add-int v6, v3, v4

    if-gt v5, v6, :cond_96

    .line 391
    add-int/lit8 v5, v2, 0x1

    array-length v6, p0

    if-ge v5, v6, :cond_44

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    if-eq v5, v7, :cond_1c

    .line 390
    :cond_44
    add-int/lit8 v2, v2, 0x2

    goto :goto_2a

    .line 395
    :cond_47
    const/4 v5, 0x6

    if-eq v2, v5, :cond_4d

    const/4 v5, 0x7

    if-ne v2, v5, :cond_7a

    .line 397
    :cond_4d
    add-int/lit8 v2, v3, 0x2

    :goto_4f
    add-int/lit8 v5, v2, 0xf

    add-int v6, v3, v4

    if-gt v5, v6, :cond_96

    .line 398
    add-int/lit8 v5, v2, 0xd

    array-length v6, p0

    if-ge v5, v6, :cond_77

    add-int/lit8 v5, v2, 0xc

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0xd

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    if-ne v5, v7, :cond_77

    add-int/lit8 v5, v2, 0xe

    aget-byte v5, p0, v5

    if-nez v5, :cond_77

    add-int/lit8 v5, v2, 0xf

    aget-byte v5, p0, v5

    if-eqz v5, :cond_1c

    .line 397
    :cond_77
    add-int/lit8 v2, v2, 0x10

    goto :goto_4f

    .line 403
    :cond_7a
    const/16 v5, 0x16

    if-ne v2, v5, :cond_96

    if-lt v4, v8, :cond_96

    add-int/lit8 v2, v3, 0x3

    array-length v5, p0

    if-ge v2, v5, :cond_96

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    if-eq v2, v7, :cond_1c

    .line 407
    :cond_96
    add-int/lit8 v2, v4, 0x1

    add-int/2addr v2, v3

    move v3, v2

    .line 408
    goto/16 :goto_7
.end method

.method static hex([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 856
    :goto_7
    array-length v3, p0

    if-ge v0, v3, :cond_29

    const/16 v3, 0x18

    if-ge v0, v3, :cond_29

    .line 857
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 859
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hexAll([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 864
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_2a

    .line 865
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-nez v0, :cond_27

    const-string v2, "%02x"

    :goto_10
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 865
    :cond_27
    const-string v2, " %02x"

    goto :goto_10

    .line 867
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static locationOn(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 160
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static locationState(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x17

    .line 166
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_19

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 170
    const-string v0, "no permission"

    .line 182
    :goto_18
    return-object v0

    .line 172
    :cond_19
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 174
    if-eqz v0, :cond_27

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_2a

    .line 175
    :cond_27
    const-string v0, "ok"

    goto :goto_18

    .line 177
    :cond_2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_39

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    .line 180
    :goto_34
    if-eqz v0, :cond_4d

    const-string v0, "ok"

    goto :goto_18

    .line 179
    :cond_39
    const-string v1, "gps"

    .line 178
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "network"

    .line 179
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_49
    const/4 v0, 0x1

    goto :goto_34

    :cond_4b
    const/4 v0, 0x0

    goto :goto_34

    .line 180
    :cond_4d
    const-string v0, "switched off"
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_18

    .line 181
    :catch_50
    move-exception v0

    .line 182
    const-string v0, "ok"

    goto :goto_18
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 138
    const-string v0, "scale"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static looksLikeScale(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 369
    if-nez p0, :cond_4

    .line 373
    :cond_3
    :goto_3
    return v0

    .line 372
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 373
    const-string v2, "lescale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "lepulse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "le-p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "fitdays"

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "icomon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "runstar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "starfit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "fg20"

    .line 375
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "fi20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "f\\d{1,2}[a-z]{0,2}"

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "e.volve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "sacoma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "p1"

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "p1 "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "p1-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_8e
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method static trimAdv([B)[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p0, :cond_6

    .line 252
    new-array v0, v0, [B

    .line 258
    :goto_5
    return-object v0

    .line 255
    :cond_6
    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_17

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_17

    .line 256
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_6

    .line 258
    :cond_17
    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_5
.end method

.method static utcOffsetMin()I
    .registers 4

    .prologue
    .line 662
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public adverts()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adverts:I

    return v0
.end method

.method beat(I)V
    .registers 12

    .prologue
    const-wide/16 v0, 0x0

    .line 739
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    if-ne p1, v2, :cond_14

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_14

    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v3, 0x42

    if-eq v2, v3, :cond_15

    .line 752
    :cond_14
    :goto_14
    return-void

    .line 742
    :cond_15
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_67

    iget-wide v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 743
    :goto_1d
    cmpl-double v0, v5, v0

    if-lez v0, :cond_5a

    .line 744
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidLong(J)J

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget-boolean v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->syncB(JJIDZIZ)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 745
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    if-nez v0, :cond_5a

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    .line 747
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidLong(J)J

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget-boolean v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->usersB(JIDZI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 748
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->otherB()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 751
    :cond_5a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    :cond_67
    move-wide v5, v0

    .line 742
    goto :goto_1d
.end method

.method public close()V
    .registers 3

    .prologue
    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    .line 880
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 881
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 883
    return-void
.end method

.method closeGatt()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 886
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 887
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 888
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 889
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 890
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 891
    if-eqz v0, :cond_17

    .line 893
    :try_start_11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_18

    .line 897
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1a

    .line 901
    :cond_17
    :goto_17
    return-void

    .line 894
    :catch_18
    move-exception v1

    goto :goto_14

    .line 898
    :catch_1a
    move-exception v0

    goto :goto_17
.end method

.method connectTimeout(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 1108
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->connectToken:I

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->linked:Z

    if-eqz v0, :cond_11

    .line 1115
    :cond_10
    :goto_10
    return-void

    .line 1111
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 1112
    const-string v0, "connect timeout"

    invoke-virtual {p0, p2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->skip(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 1114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method

.method finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 6

    .prologue
    .line 848
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kg, z20 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 851
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    .line 852
    return-void
.end method

.method found(Landroid/bluetooth/BluetoothDevice;)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 432
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_c

    .line 454
    :cond_b
    :goto_b
    return-void

    .line 435
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSeen:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    if-nez v0, :cond_a7

    const-string v0, ""

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 440
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->resetSession()V

    .line 441
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->linked:Z

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->connectToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->connectToken:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ConnectTimeout;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;ILjava/lang/String;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    :try_start_69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d9

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_7e} :catch_7f

    goto :goto_b

    .line 449
    :catch_7f
    move-exception v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    .line 437
    :cond_a7
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " XS v%02X model %04X%s"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v0, v0, v5

    .line 438
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v0, v0, v6

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->pro(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    const-string v0, " (8 electrodes)"

    :goto_ce
    aput-object v0, v4, v7

    .line 437
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_40

    .line 438
    :cond_d6
    const-string v0, ""

    goto :goto_ce

    .line 447
    :cond_d9
    :try_start_d9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_e7} :catch_7f

    goto/16 :goto_b
.end method

.method handshakeA()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 666
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    if-eqz v0, :cond_6

    .line 676
    :cond_5
    return-void

    .line 669
    :cond_6
    iput-boolean v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    .line 670
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->utcOffsetMin()I

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    iget-boolean v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    .line 671
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidBytes(J)[B

    move-result-object v10

    .line 670
    invoke-static/range {v1 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->handshakeA(IJIIDZI[B)Ljava/util/List;

    move-result-object v0

    .line 672
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 673
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 674
    invoke-virtual {p0, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_31
.end method

.method isScale(Landroid/bluetooth/BluetoothDevice;[BI)Z
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 335
    if-eqz v3, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    move v2, v1

    .line 365
    :cond_11
    :goto_11
    return v2

    .line 338
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->backoff:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 343
    if-eqz v0, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_36

    move v2, v1

    .line 344
    goto :goto_11

    .line 346
    :cond_36
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    const/16 v0, -0x46

    if-ge p3, v0, :cond_44

    move v2, v1

    .line 347
    goto :goto_11

    .line 349
    :cond_44
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advertisesFfb0([B)Z

    move-result v0

    if-nez v0, :cond_11

    .line 352
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->xsAdvert([BLjava/lang/String;)[I

    move-result-object v0

    .line 353
    if-eqz v0, :cond_5c

    .line 354
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSeen:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 357
    :cond_5c
    const/4 v0, 0x0

    .line 359
    :try_start_5d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_78

    move-result-object v0

    .line 362
    :goto_61
    if-nez v0, :cond_67

    .line 363
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advName([B)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_67
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->looksLikeScale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->looksLike(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_73
    move v0, v2

    :goto_74
    move v2, v0

    goto :goto_11

    :cond_76
    move v0, v1

    goto :goto_74

    .line 360
    :catch_78
    move-exception v3

    goto :goto_61
.end method

.method live(DZ)V
    .registers 9

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 836
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 837
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveStable:Z

    .line 838
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, v2, :cond_1d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, v3, :cond_1d

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1d

    .line 839
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 843
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onLive(DZ)V

    .line 844
    return-void

    .line 840
    :cond_1d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-ne v0, v3, :cond_17

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_17

    .line 841
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    goto :goto_17
.end method

.method locCheck()V
    .registers 6

    .prologue
    const/4 v1, 0x7

    const/4 v0, 0x1

    .line 188
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-eqz v2, :cond_7

    .line 203
    :goto_6
    return-void

    .line 191
    :cond_7
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationOn(Landroid/content/Context;)Z

    move-result v2

    .line 192
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationOk:Z

    if-eq v2, v3, :cond_40

    .line 193
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationOk:Z

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adverts so far "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adverts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 195
    if-eqz v2, :cond_40

    .line 196
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->startScan()V

    .line 199
    :cond_40
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_51

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v3, v0, :cond_4c

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-ne v3, v1, :cond_51

    .line 200
    :cond_4c
    if-eqz v2, :cond_5e

    :goto_4e
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 202
    :cond_51
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$LocCheck;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$LocCheck;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_5e
    move v0, v1

    .line 200
    goto :goto_4e
.end method

.method logServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 8

    .prologue
    .line 575
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "svc "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 578
    const-string v4, "\n  chr "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " props 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 579
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_2b

    .line 583
    :catch_57
    move-exception v0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "services: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 586
    :cond_6e
    return-void

    .line 581
    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_76} :catch_57

    goto :goto_8
.end method

.method public nearby()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 265
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    monitor-enter v4

    .line 266
    :try_start_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;

    .line 267
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->t:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_16

    .line 268
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 271
    :catchall_30
    move-exception v0

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 272
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ByRssi;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ByRssi;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    return-object v1
.end method

.method onChanged(Ljava/util/UUID;[B)V
    .registers 12

    .prologue
    const/16 v8, 0x58

    const/16 v7, 0x53

    const/16 v6, 0x41

    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 607
    if-nez p2, :cond_c

    .line 631
    :cond_b
    :goto_b
    return-void

    .line 610
    :cond_c
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-eq v0, v7, :cond_4c

    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-eq v0, v8, :cond_4c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_4c

    .line 611
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->hexAll([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 614
    :cond_4c
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v0, v6, :cond_75

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    if-nez v0, :cond_75

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->looksLikeB([B)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 615
    const/16 v0, 0x42

    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 616
    const-string v0, "gen A -> B by the first frame"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 619
    :cond_75
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v0, v6, :cond_7d

    .line 620
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameA(Ljava/util/UUID;[B)V

    goto :goto_b

    .line 621
    :cond_7d
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v0, v7, :cond_85

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameS(Ljava/util/UUID;[B)V

    goto :goto_b

    .line 623
    :cond_85
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v0, v8, :cond_c3

    .line 624
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_b

    .line 625
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->hexAll([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 629
    :cond_c3
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameB(Ljava/util/UUID;[B)V

    goto/16 :goto_b
.end method

.method onClassicS([B)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 813
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->add([B)I

    move-result v0

    .line 814
    if-nez v0, :cond_a

    .line 831
    :goto_9
    return-void

    .line 817
    :cond_a
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 818
    if-ne v0, v3, :cond_17

    .line 819
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_9

    .line 820
    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 821
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 822
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->user(ZII)[B

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_9

    .line 824
    :cond_2f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 825
    const-string v0, "S: fat test failed (contact) \u2014 weight only"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 827
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kg, fat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->fatPct:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %, water "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->waterPct:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %, muscle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->musclePct:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %, bone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->boneKg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kg, kcal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kcal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->reading()Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto/16 :goto_9
.end method

.method onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_6

    .line 503
    :cond_5
    :goto_5
    return-void

    .line 481
    :cond_6
    const/4 v0, 0x2

    if-ne p3, v0, :cond_30

    .line 482
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->linked:Z

    .line 483
    const-string v0, "connected"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    :try_start_11
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_84

    .line 489
    :goto_14
    :try_start_14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_5

    .line 490
    :catch_18
    move-exception v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 493
    :cond_30
    if-nez p3, :cond_5

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 495
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->linked:Z

    if-nez v0, :cond_70

    .line 496
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no link ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->skip(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 499
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 486
    :catch_84
    move-exception v0

    goto :goto_14
.end method

.method onFrameA(Ljava/util/UUID;[B)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 679
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 680
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->liveWeightA([B)D

    move-result-wide v0

    .line 681
    cmpl-double v2, v0, v4

    if-lez v2, :cond_18

    .line 682
    invoke-virtual {p0, v0, v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 706
    :cond_17
    :goto_17
    return-void

    .line 683
    :cond_18
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->oddLive:Z

    if-nez v2, :cond_4a

    .line 684
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->oddLive:Z

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_17

    .line 686
    :cond_4a
    cmpl-double v0, v0, v4

    if-nez v0, :cond_17

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_17

    .line 687
    invoke-virtual {p0, v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_17

    .line 691
    :cond_5a
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->parseA([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_17

    .line 695
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 696
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_7b

    .line 697
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackA(II)[B

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 698
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeA()V

    goto :goto_17

    .line 699
    :cond_7b
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_87

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_17

    .line 700
    :cond_87
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackA(II)[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 701
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->decodeA(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stored:Z

    if-nez v1, :cond_17

    .line 703
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto/16 :goto_17
.end method

.method onFrameB(Ljava/util/UUID;[B)V
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 711
    array-length v0, p2

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4b

    aget-byte v0, p2, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa0

    if-eq v0, v2, :cond_17

    aget-byte v0, p2, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_4b

    :cond_17
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    if-nez v0, :cond_4b

    .line 712
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->validB([B)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    .line 713
    :goto_23
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    :goto_2d
    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->add([B)[B

    move-result-object v2

    .line 714
    if-eqz v0, :cond_44

    .line 715
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackB(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 716
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    .line 718
    :cond_44
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->decodeB([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 719
    if-nez v0, :cond_50

    .line 728
    :cond_4a
    :goto_4a
    return-void

    .line 712
    :cond_4b
    const/4 v0, 0x0

    goto :goto_23

    .line 713
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    goto :goto_2d

    .line 722
    :cond_50
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 723
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    if-eqz v1, :cond_5a

    .line 724
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_4a

    .line 725
    :cond_5a
    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_6a

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4a

    .line 726
    :cond_6a
    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_4a
.end method

.method onFrameS(Ljava/util/UUID;[B)V
    .registers 11

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 759
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_29

    .line 760
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rx S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->hexAll([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 763
    :cond_29
    array-length v2, p2

    if-lt v2, v7, :cond_40

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_40

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_40

    .line 764
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onClassicS([B)V

    .line 794
    :cond_3f
    :goto_3f
    return-void

    .line 767
    :cond_40
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsAsm:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->add([B)[B

    move-result-object v2

    .line 768
    if-eqz v2, :cond_3f

    .line 771
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->parseXs([B)Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;

    move-result-object v3

    .line 772
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHelloSent:Z

    if-nez v4, :cond_5d

    .line 774
    const/4 v4, -0x1

    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x33

    if-ne v5, v6, :cond_5a

    move v0, v1

    :cond_5a
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHello(IZ)V

    .line 776
    :cond_5d
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-nez v0, :cond_8b

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XS rx func "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->func:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->hexAll([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 779
    :cond_8b
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->ackWanted:Z

    if-eqz v0, :cond_9c

    .line 780
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->ack(I[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 782
    :cond_9c
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-ne v0, v1, :cond_aa

    .line 783
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 784
    iget-wide v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_3f

    .line 785
    :cond_aa
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-ne v0, v7, :cond_d8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->stored(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;J)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XS stored weigh-in skipped ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 787
    :cond_d8
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-ne v0, v7, :cond_3f

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    if-nez v0, :cond_3f

    .line 788
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XS result "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " kg, error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->error:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", z20 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", z100 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    .line 790
    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 791
    iget-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    invoke-virtual {p0, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 792
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->reading(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto/16 :goto_3f
.end method

.method onReady()V
    .registers 6

    .prologue
    const/16 v4, 0x53

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 635
    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v3, 0x41

    if-ne v2, v3, :cond_1b

    .line 636
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 653
    :cond_1a
    :goto_1a
    return-void

    .line 637
    :cond_1b
    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v2, v4, :cond_43

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    if-eqz v2, :cond_43

    .line 638
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v2, v2, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_31

    .line 639
    const-string v0, "XS v30 (encrypted) \u2014 not supported, frames logged"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 641
    :cond_31
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v3, v3, v1

    const/16 v4, 0x11

    if-lt v3, v4, :cond_41

    :goto_3d
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHello(IZ)V

    goto :goto_1a

    :cond_41
    move v0, v1

    goto :goto_3d

    .line 643
    :cond_43
    iget-char v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v1, v4, :cond_75

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 645
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->date(II)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 646
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 647
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 646
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->time(III)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_1a

    .line 648
    :cond_75
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x58

    if-eq v0, v1, :cond_1a

    .line 651
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a
.end method

.method onServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 11

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_7

    .line 570
    :goto_6
    return-void

    .line 509
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 510
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->SERVICE:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_73

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->WRITE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 512
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->WRITE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 514
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->NAME_IMAGE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_70

    const/16 v0, 0x41

    :goto_36
    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gen "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 517
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->FRAMES:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 518
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    invoke-direct {v1, v8, v2, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto :goto_6

    .line 514
    :cond_70
    const/16 v0, 0x42

    goto :goto_36

    .line 523
    :cond_73
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->SERVICE_A:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 524
    if-eqz v6, :cond_107

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->NOTIFY_A:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_107

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WRITE_A:Ljava/util/UUID;

    .line 525
    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_107

    .line 526
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->NOTIFY_A:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WRITE_A:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    move-object v3, v1

    .line 533
    :goto_98
    :try_start_98
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9f} :catch_11b

    move-result-object v1

    .line 536
    :goto_a0
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->looksLikeScale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b8

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->looksLike(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b8

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11e

    :cond_b8
    const/4 v4, 0x1

    .line 538
    :goto_b9
    if-eqz v3, :cond_123

    if-eqz v6, :cond_c3

    if-nez v4, :cond_c3

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    if-eqz v7, :cond_123

    .line 539
    :cond_c3
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 541
    const/16 v0, 0x53

    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gen S (Senssun/MovingLife "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v6, :cond_120

    const-string v0, "FFF0"

    :goto_dd
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->logServices(Landroid/bluetooth/BluetoothGatt;)V

    .line 544
    invoke-virtual {p0, p1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 545
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    invoke-direct {v1, v8, v2, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto/16 :goto_6

    .line 528
    :cond_107
    if-eqz v1, :cond_1ca

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->CHAR_B:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1ca

    .line 529
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->CHAR_B:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    move-object v0, v1

    move-object v3, v1

    goto/16 :goto_98

    .line 534
    :catch_11b
    move-exception v1

    move-object v1, v2

    goto :goto_a0

    .line 536
    :cond_11e
    const/4 v4, 0x0

    goto :goto_b9

    .line 542
    :cond_120
    const-string v0, "FFB0"

    goto :goto_dd

    .line 549
    :cond_123
    if-eqz v4, :cond_194

    .line 550
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    const/16 v0, 0x58

    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gen X: unknown scale protocol, capturing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->logServices(Landroid/bluetooth/BluetoothGatt;)V

    .line 554
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_159
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 555
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16d
    :goto_16d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 556
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x30

    if-eqz v4, :cond_16d

    .line 558
    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_16d

    .line 562
    :cond_185
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    invoke-direct {v1, v8, v2, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto/16 :goto_6

    .line 566
    :cond_194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a scale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 569
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_1ca
    move-object v0, v2

    move-object v3, v2

    goto/16 :goto_98
.end method

.method opDone()V
    .registers 2

    .prologue
    .line 947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 948
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    .line 949
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    .line 950
    return-void
.end method

.method public pick(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_27

    .line 289
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->startScan()V

    .line 291
    :cond_27
    return-void
.end method

.method pump()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 914
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_c

    .line 944
    :cond_b
    :goto_b
    return-void

    .line 917
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 918
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    .line 921
    :try_start_1c
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_54

    .line 922
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_c

    .line 935
    :catch_25
    move-exception v0

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    move v0, v1

    .line 938
    :goto_3d
    if-eqz v0, :cond_c

    .line 939
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 940
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 924
    :cond_54
    :try_start_54
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    if-ne v2, v4, :cond_68

    .line 925
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 926
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    goto :goto_3d

    .line 928
    :cond_68
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 929
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    if-ne v2, v3, :cond_8c

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8c

    move v2, v3

    .line 928
    :goto_79
    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 932
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 933
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_8a} :catch_25

    move-result v0

    goto :goto_3d

    :cond_8c
    move v2, v4

    .line 931
    goto :goto_79
.end method

.method resetSession()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 457
    iput-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 458
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 459
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    .line 460
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 461
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    .line 462
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    .line 463
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 464
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveStable:Z

    .line 465
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    .line 466
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->reset()V

    .line 467
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 468
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    .line 469
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHelloSent:Z

    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 471
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 473
    return-void
.end method

.method public savedSilent()Z
    .registers 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    .line 301
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 300
    :goto_25
    return v0

    .line 301
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method saw(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adverts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adverts:I

    .line 216
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 217
    if-nez v5, :cond_f

    .line 248
    :cond_e
    :goto_e
    return-void

    .line 220
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;

    .line 221
    if-nez v0, :cond_b2

    move v4, v2

    .line 222
    :goto_1a
    if-eqz v4, :cond_32

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x78

    if-ge v0, v3, :cond_e

    .line 226
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;-><init>()V

    .line 227
    iput-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->mac:Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->nearby:Ljava/util/Map;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_32
    const/4 v3, 0x0

    .line 232
    :try_start_33
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_d4

    move-result-object v3

    .line 235
    :goto_37
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_43

    .line 236
    :cond_3f
    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advName([B)Ljava/lang/String;

    move-result-object v3

    .line 238
    :cond_43
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4d

    .line 239
    iput-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->name:Ljava/lang/String;

    .line 241
    :cond_4d
    iput p2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->rssi:I

    .line 242
    iget-boolean v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->ffb0:Z

    if-nez v3, :cond_59

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advertisesFfb0([B)Z

    move-result v3

    if-eqz v3, :cond_5a

    :cond_59
    move v1, v2

    :cond_5a
    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->ffb0:Z

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->t:J

    .line 244
    if-eqz v4, :cond_e

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dBm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->name:Ljava/lang/String;

    if-nez v1, :cond_b5

    const-string v1, "-"

    :goto_89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->ffb0:Z

    if-eqz v0, :cond_d1

    const-string v0, " FFB0"

    :goto_93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adv "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->trimAdv([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->hexAll([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_b2
    move v4, v1

    .line 221
    goto/16 :goto_1a

    .line 245
    :cond_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_89

    .line 246
    :cond_d1
    const-string v0, ""

    goto :goto_93

    .line 233
    :catch_d4
    move-exception v6

    goto/16 :goto_37
.end method

.method send([BZ)V
    .registers 7

    .prologue
    .line 906
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_5

    .line 911
    :goto_4
    return-void

    .line 909
    :cond_5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    if-eqz p2, :cond_17

    const/4 v0, 0x2

    :goto_c
    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto :goto_4

    .line 909
    :cond_17
    const/4 v0, 0x3

    goto :goto_c
.end method

.method sendB([B)V
    .registers 5

    .prologue
    .line 731
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->framesB(I[B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 732
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_a

    .line 734
    :cond_1b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 735
    return-void
.end method

.method setState(I)V
    .registers 3

    .prologue
    .line 871
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, p1, :cond_b

    .line 872
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    .line 873
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onState(I)V

    .line 875
    :cond_b
    return-void
.end method

.method skip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1100
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1105
    :cond_e
    :goto_e
    return-void

    .line 1103
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->backoff:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public start()V
    .registers 5

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    .line 145
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 147
    :cond_15
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 153
    :goto_19
    return-void

    .line 150
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: saved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->locationState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->startScan()V

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$LocCheck;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$LocCheck;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19
.end method

.method startScan()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x7d0

    .line 305
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-eqz v0, :cond_7

    .line 320
    :cond_6
    :goto_6
    return-void

    .line 308
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 310
    :try_start_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 311
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 313
    const-string v0, "startLeScan refused"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_30} :catch_31

    goto :goto_6

    .line 316
    :catch_31
    move-exception v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method stopScan()V
    .registers 3

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_f

    .line 325
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_13

    .line 329
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    .line 330
    return-void

    .line 327
    :catch_13
    move-exception v0

    goto :goto_f
.end method

.method subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 589
    if-nez p2, :cond_4

    .line 604
    :cond_3
    :goto_3
    return-void

    .line 593
    :cond_4
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_30

    .line 597
    :goto_8
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->CCCD:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 598
    if-eqz v2, :cond_3

    .line 599
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_48

    .line 600
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_48

    move v0, v1

    .line 601
    :goto_21
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    if-eqz v0, :cond_4a

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 602
    :goto_29
    invoke-direct {v4, v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    .line 601
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 594
    :catch_30
    move-exception v0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 600
    :cond_48
    const/4 v0, 0x0

    goto :goto_21

    .line 602
    :cond_4a
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_29
.end method

.method unixNow()J
    .registers 5

    .prologue
    .line 658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method xsHello(IZ)V
    .registers 16

    .prologue
    const/4 v12, 0x1

    .line 800
    iput-boolean v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHelloSent:Z

    .line 801
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->utcOffsetMin()I

    move-result v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    .line 802
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_70

    iget-wide v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    :goto_1d
    move v0, p1

    move v1, p2

    .line 801
    invoke-static/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->hello(IZIIJZIID)Ljava/util/List;

    move-result-object v1

    .line 803
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XS hello v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-gez p1, :cond_76

    if-eqz p2, :cond_73

    const-string v0, "11-family"

    :goto_3d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 805
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frames"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 806
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 807
    invoke-virtual {p0, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_60

    .line 802
    :cond_70
    iget-wide v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    goto :goto_1d

    .line 804
    :cond_73
    const-string v0, "1-family"

    goto :goto_3d

    :cond_76
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 809
    :cond_7b
    return-void
.end method
