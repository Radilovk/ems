.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.super Ljava/lang/Object;
.source "ScaleLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Event;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Found;
    }
.end annotation


# static fields
.field static final BEAT_MS:J = 0x190L

.field public static final CONNECTING:I = 0x2

.field public static final DONE:I = 0x5

.field static final HELLO_WAIT_MS:J = 0x5dcL

.field public static final MEASURING:I = 0x4

.field public static final NO_BLUETOOTH:I = 0x6

.field static final OP_TIMEOUT_MS:J = 0x5dcL

.field static final RAW_CAP:I = 0x190

.field static final RAW_S:I = 0xc8

.field public static final READY:I = 0x3

.field public static final SEARCHING:I = 0x1


# instance fields
.field adapter:Landroid/bluetooth/BluetoothAdapter;

.field final age:I

.field final app:Landroid/content/Context;

.field final asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

.field final asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

.field beatToken:I

.field busy:Z

.field final clientId:J

.field closed:Z

.field gatt:Landroid/bluetooth/BluetoothGatt;

.field gen:C

.field handshakeSent:Z

.field heard:Z

.field final heightCm:I

.field final lastKg:D

.field final listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

.field liveKg:D

.field liveStable:Z

.field final main:Landroid/os/Handler;

.field final male:Z

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
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    .line 80
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    .line 81
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    .line 88
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    .line 89
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsAsm:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSeen:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    .line 105
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    .line 106
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    .line 107
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    .line 108
    iput p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    .line 109
    const-wide/16 v0, 0x0

    cmpl-double v0, p7, v0

    if-lez v0, :cond_5c

    :goto_57
    iput-wide p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    .line 110
    iput-object p9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    .line 111
    return-void

    .line 109
    :cond_5c
    const-wide p7, 0x4051800000000000L    # 70.0

    goto :goto_57
.end method

.method static advName([B)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 216
    const/4 v1, 0x0

    :goto_2
    if-eqz p0, :cond_f

    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_f

    .line 217
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 218
    if-nez v2, :cond_10

    .line 231
    :cond_f
    :goto_f
    return-object v0

    .line 221
    :cond_10
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 222
    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3c

    :cond_1e
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    array-length v4, p0

    if-gt v3, v4, :cond_3c

    .line 224
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

    .line 229
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 230
    goto :goto_2

    .line 225
    :catch_40
    move-exception v1

    goto :goto_f
.end method

.method static advertisesFfb0([B)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 197
    move v2, v0

    :goto_2
    if-eqz p0, :cond_16

    add-int/lit8 v1, v2, 0x1

    array-length v3, p0

    if-ge v1, v3, :cond_16

    .line 198
    aget-byte v1, p0, v2

    and-int/lit16 v3, v1, 0xff

    .line 199
    if-eqz v3, :cond_16

    add-int v1, v2, v3

    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-lt v1, v4, :cond_17

    .line 212
    :cond_16
    :goto_16
    return v0

    .line 202
    :cond_17
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 203
    const/4 v4, 0x2

    if-eq v1, v4, :cond_23

    const/4 v4, 0x3

    if-ne v1, v4, :cond_47

    .line 204
    :cond_23
    add-int/lit8 v1, v2, 0x2

    :goto_25
    add-int/lit8 v4, v1, 0x1

    add-int v5, v2, v3

    if-gt v4, v5, :cond_47

    .line 205
    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_44

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const v5, 0xffb0

    if-ne v4, v5, :cond_44

    .line 206
    const/4 v0, 0x1

    goto :goto_16

    .line 204
    :cond_44
    add-int/lit8 v1, v1, 0x2

    goto :goto_25

    .line 210
    :cond_47
    add-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    move v2, v1

    .line 211
    goto :goto_2
.end method

.method static hex([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 654
    :goto_7
    array-length v3, p0

    if-ge v0, v3, :cond_29

    const/16 v3, 0x18

    if-ge v0, v3, :cond_29

    .line 655
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

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 657
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hexAll([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 662
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_2a

    .line 663
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

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 663
    :cond_27
    const-string v2, " %02x"

    goto :goto_10

    .line 665
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    const-string v0, "scale"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static looksLikeScale(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 186
    if-nez p0, :cond_4

    .line 190
    :cond_3
    :goto_3
    return v0

    .line 189
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "lescale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "lepulse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "le-p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "fitdays"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "icomon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "e.volve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "sacoma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "p1"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "p1 "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "p1-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_66
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static utcOffsetMin()I
    .registers 4

    .prologue
    .line 447
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
.method beat(I)V
    .registers 12

    .prologue
    const-wide/16 v0, 0x0

    .line 524
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    if-ne p1, v2, :cond_14

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_14

    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v3, 0x42

    if-eq v2, v3, :cond_15

    .line 537
    :cond_14
    :goto_14
    return-void

    .line 527
    :cond_15
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_67

    iget-wide v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 528
    :goto_1d
    cmpl-double v0, v5, v0

    if-lez v0, :cond_5a

    .line 529
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

    .line 530
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    if-nez v0, :cond_5a

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    .line 532
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidLong(J)J

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget-boolean v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->usersB(JIDZI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 533
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->otherB()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 536
    :cond_5a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    :cond_67
    move-wide v5, v0

    .line 527
    goto :goto_1d
.end method

.method public close()V
    .registers 3

    .prologue
    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    .line 678
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 679
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method closeGatt()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 684
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 685
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 686
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 687
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 688
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 689
    if-eqz v0, :cond_17

    .line 691
    :try_start_11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_18

    .line 695
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1a

    .line 699
    :cond_17
    :goto_17
    return-void

    .line 692
    :catch_18
    move-exception v1

    goto :goto_14

    .line 696
    :catch_1a
    move-exception v0

    goto :goto_17
.end method

.method finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 6

    .prologue
    .line 646
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    .line 647
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

    .line 648
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 649
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    .line 650
    return-void
.end method

.method found(Landroid/bluetooth/BluetoothDevice;)V
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_c

    .line 255
    :cond_b
    :goto_b
    return-void

    .line 238
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 239
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

    .line 240
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

    if-nez v0, :cond_8f

    const-string v0, ""

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 243
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->resetSession()V

    .line 245
    :try_start_51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c0

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_66} :catch_67

    goto :goto_b

    .line 250
    :catch_67
    move-exception v0

    .line 251
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

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    .line 240
    :cond_8f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, " XS v%02X model %04X%s"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v0, v0, v5

    .line 241
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

    if-eqz v0, :cond_bd

    const-string v0, " (8 electrodes)"

    :goto_b6
    aput-object v0, v4, v7

    .line 240
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 241
    :cond_bd
    const-string v0, ""

    goto :goto_b6

    .line 248
    :cond_c0
    :try_start_c0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_ce} :catch_67

    goto/16 :goto_b
.end method

.method handshakeA()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 451
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    if-eqz v0, :cond_6

    .line 461
    :cond_5
    return-void

    .line 454
    :cond_6
    iput-boolean v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    .line 455
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

    .line 456
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidBytes(J)[B

    move-result-object v10

    .line 455
    invoke-static/range {v1 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->handshakeA(IJIIDZI[B)Ljava/util/List;

    move-result-object v0

    .line 457
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 458
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 459
    invoke-virtual {p0, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_31
.end method

.method isScale(Landroid/bluetooth/BluetoothDevice;[B)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    move v2, v1

    .line 182
    :cond_11
    :goto_11
    return v2

    .line 163
    :cond_12
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 166
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advertisesFfb0([B)Z

    move-result v3

    if-nez v3, :cond_11

    .line 169
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->xsAdvert([BLjava/lang/String;)[I

    move-result-object v3

    .line 170
    if-eqz v3, :cond_36

    .line 171
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSeen:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 174
    :cond_36
    const/4 v0, 0x0

    .line 176
    :try_start_37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_52

    move-result-object v0

    .line 179
    :goto_3b
    if-nez v0, :cond_41

    .line 180
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advName([B)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_41
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->looksLikeScale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->looksLike(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_4d
    move v0, v2

    :goto_4e
    move v2, v0

    goto :goto_11

    :cond_50
    move v0, v1

    goto :goto_4e

    .line 177
    :catch_52
    move-exception v3

    goto :goto_3b
.end method

.method live(DZ)V
    .registers 9

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 634
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 635
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveStable:Z

    .line 636
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, v2, :cond_1d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, v3, :cond_1d

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1d

    .line 637
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 641
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onLive(DZ)V

    .line 642
    return-void

    .line 638
    :cond_1d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-ne v0, v3, :cond_17

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_17

    .line 639
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    goto :goto_17
.end method

.method logServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 8

    .prologue
    .line 368
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

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "svc "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 370
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

    .line 371
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

    .line 372
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_2b

    .line 376
    :catch_57
    move-exception v0

    .line 377
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

    .line 379
    :cond_6e
    return-void

    .line 374
    :cond_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_76} :catch_57

    goto :goto_8
.end method

.method mine(DJ)Z
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 590
    const-wide/32 v4, 0x5f5e1000

    cmp-long v0, p3, v4

    if-lez v0, :cond_5c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v4

    sub-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x258

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5c

    move v0, v1

    .line 591
    :goto_19
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_5e

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    sub-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_5e

    move v3, v1

    .line 592
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stored weigh-in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_49

    if-eqz v3, :cond_60

    :cond_49
    const-string v4, "taken"

    :goto_4b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 593
    if-nez v0, :cond_5a

    if-eqz v3, :cond_5b

    :cond_5a
    move v2, v1

    :cond_5b
    return v2

    :cond_5c
    move v0, v2

    .line 590
    goto :goto_19

    :cond_5e
    move v3, v2

    .line 591
    goto :goto_30

    .line 592
    :cond_60
    const-string v4, "skipped"

    goto :goto_4b
.end method

.method onChanged(Ljava/util/UUID;[B)V
    .registers 7

    .prologue
    .line 400
    if-nez p2, :cond_3

    .line 415
    :cond_2
    :goto_2
    return-void

    .line 403
    :cond_3
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x41

    if-ne v0, v1, :cond_d

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameA(Ljava/util/UUID;[B)V

    goto :goto_2

    .line 405
    :cond_d
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_17

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameS(Ljava/util/UUID;[B)V

    goto :goto_2

    .line 407
    :cond_17
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x58

    if-ne v0, v1, :cond_59

    .line 408
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2

    .line 409
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    goto :goto_2

    .line 413
    :cond_59
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameB(Ljava/util/UUID;[B)V

    goto :goto_2
.end method

.method onClassicS([B)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 611
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->add([B)I

    move-result v0

    .line 612
    if-nez v0, :cond_a

    .line 629
    :goto_9
    return-void

    .line 615
    :cond_a
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 616
    if-ne v0, v3, :cond_17

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_9

    .line 618
    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 619
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->kg:D

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 620
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->user(ZII)[B

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_9

    .line 622
    :cond_2f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 623
    const-string v0, "S: fat test failed (contact) \u2014 weight only"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 625
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

    .line 627
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->reading()Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto/16 :goto_9
.end method

.method onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8

    .prologue
    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_5

    .line 296
    :cond_4
    :goto_4
    return-void

    .line 282
    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_29

    .line 283
    const-string v0, "connected"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 285
    :try_start_d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_4

    .line 286
    :catch_11
    move-exception v0

    .line 287
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

    goto :goto_4

    .line 289
    :cond_29
    if-nez p3, :cond_4

    .line 290
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

    .line 291
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 292
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method onFrameA(Ljava/util/UUID;[B)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 464
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 465
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->liveWeightA([B)D

    move-result-wide v0

    .line 466
    cmpl-double v2, v0, v4

    if-lez v2, :cond_18

    .line 467
    invoke-virtual {p0, v0, v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 491
    :cond_17
    :goto_17
    return-void

    .line 468
    :cond_18
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->oddLive:Z

    if-nez v2, :cond_4a

    .line 469
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->oddLive:Z

    .line 470
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

    .line 471
    :cond_4a
    cmpl-double v0, v0, v4

    if-nez v0, :cond_17

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_17

    .line 472
    invoke-virtual {p0, v4, v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_17

    .line 476
    :cond_5a
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->parseA([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_17

    .line 480
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 481
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_7b

    .line 482
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackA(II)[B

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 483
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeA()V

    goto :goto_17

    .line 484
    :cond_7b
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_87

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_17

    .line 485
    :cond_87
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackA(II)[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 486
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->decodeA(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stored:Z

    if-eqz v1, :cond_aa

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->mine(DJ)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 488
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto/16 :goto_17
.end method

.method onFrameB(Ljava/util/UUID;[B)V
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 496
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

    .line 497
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->validB([B)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    .line 498
    :goto_23
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    :goto_2d
    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->add([B)[B

    move-result-object v2

    .line 499
    if-eqz v0, :cond_44

    .line 500
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackB(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 501
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    .line 503
    :cond_44
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->decodeB([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 504
    if-nez v0, :cond_50

    .line 513
    :cond_4a
    :goto_4a
    return-void

    .line 497
    :cond_4b
    const/4 v0, 0x0

    goto :goto_23

    .line 498
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    goto :goto_2d

    .line 507
    :cond_50
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 508
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    if-eqz v1, :cond_5a

    .line 509
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_4a

    .line 510
    :cond_5a
    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_6a

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4a

    .line 511
    :cond_6a
    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_4a
.end method

.method onFrameS(Ljava/util/UUID;[B)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 544
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_29

    .line 545
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 546
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

    .line 548
    :cond_29
    array-length v2, p2

    if-lt v2, v8, :cond_40

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_40

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_40

    .line 549
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onClassicS([B)V

    .line 580
    :cond_3f
    :goto_3f
    return-void

    .line 552
    :cond_40
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsAsm:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;

    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->add([B)[B

    move-result-object v2

    .line 553
    if-eqz v2, :cond_3f

    .line 556
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->parseXs([B)Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;

    move-result-object v3

    .line 557
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHelloSent:Z

    if-nez v4, :cond_5d

    .line 559
    const/4 v4, -0x1

    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x33

    if-ne v5, v6, :cond_5a

    move v0, v1

    :cond_5a
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHello(IZ)V

    .line 561
    :cond_5d
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-nez v0, :cond_8b

    .line 562
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

    .line 564
    :cond_8b
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->ackWanted:Z

    if-eqz v0, :cond_9c

    .line 565
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->ack(I[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 567
    :cond_9c
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-ne v0, v1, :cond_aa

    .line 568
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 569
    iget-wide v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->stable:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_3f

    .line 570
    :cond_aa
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-ne v0, v8, :cond_e2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->stored(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;J)Z

    move-result v0

    if-eqz v0, :cond_e2

    iget-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    iget-wide v6, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->time:J

    .line 571
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->mine(DJ)Z

    move-result v0

    if-nez v0, :cond_e2

    .line 572
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

    .line 573
    :cond_e2
    iget v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kind:I

    if-ne v0, v8, :cond_3f

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->finished:Z

    if-nez v0, :cond_3f

    .line 574
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 575
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

    .line 576
    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 577
    iget-wide v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    invoke-virtual {p0, v4, v5, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 578
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->reading(Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto/16 :goto_3f
.end method

.method onReady()V
    .registers 6

    .prologue
    const/16 v4, 0x53

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 418
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 419
    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v3, 0x41

    if-ne v2, v3, :cond_1b

    .line 420
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :cond_1a
    :goto_1a
    return-void

    .line 421
    :cond_1b
    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v2, v4, :cond_43

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    if-eqz v2, :cond_43

    .line 422
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    aget v2, v2, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_31

    .line 423
    const-string v0, "XS v30 (encrypted) \u2014 not supported, frames logged"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 425
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

    .line 427
    :cond_43
    iget-char v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    if-ne v1, v4, :cond_82

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 429
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->date(II)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 430
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 431
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 430
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->time(III)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 432
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->user(ZII)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_1a

    .line 433
    :cond_82
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x58

    if-eq v0, v1, :cond_1a

    .line 436
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

    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_7

    .line 363
    :goto_6
    return-void

    .line 302
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 303
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->SERVICE:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_73

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->WRITE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->WRITE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 307
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->NAME_IMAGE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_70

    const/16 v0, 0x41

    :goto_36
    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 308
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

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 310
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->FRAMES:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    invoke-direct {v1, v8, v2, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto :goto_6

    .line 307
    :cond_70
    const/16 v0, 0x42

    goto :goto_36

    .line 316
    :cond_73
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->SERVICE_A:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v6

    .line 317
    if-eqz v6, :cond_107

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->NOTIFY_A:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_107

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WRITE_A:Ljava/util/UUID;

    .line 318
    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_107

    .line 319
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->NOTIFY_A:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 320
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WRITE_A:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    move-object v3, v1

    .line 326
    :goto_98
    :try_start_98
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9f} :catch_11b

    move-result-object v1

    .line 329
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

    .line 331
    :goto_b9
    if-eqz v3, :cond_123

    if-eqz v6, :cond_c3

    if-nez v4, :cond_c3

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xs:[I

    if-eqz v7, :cond_123

    .line 332
    :cond_c3
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 334
    const/16 v0, 0x53

    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 335
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

    .line 336
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->logServices(Landroid/bluetooth/BluetoothGatt;)V

    .line 337
    invoke-virtual {p0, p1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    invoke-direct {v1, v8, v2, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto/16 :goto_6

    .line 321
    :cond_107
    if-eqz v1, :cond_1ca

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->CHAR_B:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_1ca

    .line 322
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->CHAR_B:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    move-object v0, v1

    move-object v3, v1

    goto/16 :goto_98

    .line 327
    :catch_11b
    move-exception v1

    move-object v1, v2

    goto :goto_a0

    .line 329
    :cond_11e
    const/4 v4, 0x0

    goto :goto_b9

    .line 335
    :cond_120
    const-string v0, "FFB0"

    goto :goto_dd

    .line 342
    :cond_123
    if-eqz v4, :cond_194

    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    const/16 v0, 0x58

    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 345
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

    .line 346
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->logServices(Landroid/bluetooth/BluetoothGatt;)V

    .line 347
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

    .line 348
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

    .line 349
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x30

    if-eqz v4, :cond_16d

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_16d

    .line 355
    :cond_185
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    invoke-direct {v1, v8, v2, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto/16 :goto_6

    .line 359
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

    .line 360
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 362
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
    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 746
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    .line 747
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    .line 748
    return-void
.end method

.method pump()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 712
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_c

    .line 742
    :cond_b
    :goto_b
    return-void

    .line 715
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 716
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    .line 719
    :try_start_1c
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_54

    .line 720
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_c

    .line 733
    :catch_25
    move-exception v0

    .line 734
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

    .line 736
    :goto_3d
    if-eqz v0, :cond_c

    .line 737
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 722
    :cond_54
    :try_start_54
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    if-ne v2, v4, :cond_68

    .line 723
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 724
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    goto :goto_3d

    .line 726
    :cond_68
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 727
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    if-ne v2, v3, :cond_8c

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8c

    move v2, v3

    .line 726
    :goto_79
    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 730
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 731
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_8a} :catch_25

    move-result v0

    goto :goto_3d

    :cond_8c
    move v2, v4

    .line 729
    goto :goto_79
.end method

.method resetSession()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 258
    iput-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 259
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 260
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    .line 261
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 262
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    .line 263
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 265
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveStable:Z

    .line 266
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->results:I

    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->senssun:Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;->reset()V

    .line 268
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->rawLogged:I

    .line 269
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    .line 270
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHelloSent:Z

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 274
    return-void
.end method

.method send([BZ)V
    .registers 7

    .prologue
    .line 704
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_5

    .line 709
    :goto_4
    return-void

    .line 707
    :cond_5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    if-eqz p2, :cond_17

    const/4 v0, 0x2

    :goto_c
    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto :goto_4

    .line 707
    :cond_17
    const/4 v0, 0x3

    goto :goto_c
.end method

.method sendB([B)V
    .registers 5

    .prologue
    .line 516
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

    .line 517
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_a

    .line 519
    :cond_1b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 520
    return-void
.end method

.method setState(I)V
    .registers 3

    .prologue
    .line 669
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, p1, :cond_b

    .line 670
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    .line 671
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onState(I)V

    .line 673
    :cond_b
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    .line 121
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 123
    :cond_15
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 127
    :goto_19
    return-void

    .line 126
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->startScan()V

    goto :goto_19
.end method

.method startScan()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x7d0

    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-eqz v0, :cond_7

    .line 145
    :cond_6
    :goto_6
    return-void

    .line 133
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 135
    :try_start_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 136
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 138
    const-string v0, "startLeScan refused"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_30} :catch_31

    goto :goto_6

    .line 141
    :catch_31
    move-exception v0

    .line 142
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

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method stopScan()V
    .registers 3

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_f

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_13

    .line 154
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    .line 155
    return-void

    .line 152
    :catch_13
    move-exception v0

    goto :goto_f
.end method

.method subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 382
    if-nez p2, :cond_4

    .line 397
    :cond_3
    :goto_3
    return-void

    .line 386
    :cond_4
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_30

    .line 390
    :goto_8
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->CCCD:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_3

    .line 392
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_48

    .line 393
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_48

    move v0, v1

    .line 394
    :goto_21
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    if-eqz v0, :cond_4a

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 395
    :goto_29
    invoke-direct {v4, v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    .line 394
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 387
    :catch_30
    move-exception v0

    .line 388
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

    .line 393
    :cond_48
    const/4 v0, 0x0

    goto :goto_21

    .line 395
    :cond_4a
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_29
.end method

.method unixNow()J
    .registers 5

    .prologue
    .line 443
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

    .line 598
    iput-boolean v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsHelloSent:Z

    .line 599
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->utcOffsetMin()I

    move-result v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->unixNow()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    .line 600
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_70

    iget-wide v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    :goto_1d
    move v0, p1

    move v1, p2

    .line 599
    invoke-static/range {v0 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->hello(IZIIJZIID)Ljava/util/List;

    move-result-object v1

    .line 601
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->xsSn:I

    .line 602
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

    .line 603
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frames"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 604
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 605
    invoke-virtual {p0, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_60

    .line 600
    :cond_70
    iget-wide v9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    goto :goto_1d

    .line 602
    :cond_73
    const-string v0, "1-family"

    goto :goto_3d

    :cond_76
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 607
    :cond_7b
    return-void
.end method
