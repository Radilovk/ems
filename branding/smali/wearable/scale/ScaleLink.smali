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
        Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;,
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

.field done:Z

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

.field replyIndex:I

.field scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

.field seq:I

.field state:I

.field usersSent:Z

.field write:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>(Landroid/content/Context;JZIIDLcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;)V
    .registers 13

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    .line 71
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    .line 72
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    .line 85
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    .line 86
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    .line 87
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    .line 88
    iput p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    .line 89
    const-wide/16 v0, 0x0

    cmpl-double v0, p7, v0

    if-lez v0, :cond_43

    :goto_3e
    iput-wide p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    .line 90
    iput-object p9, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    .line 91
    return-void

    .line 89
    :cond_43
    const-wide p7, 0x4051800000000000L    # 70.0

    goto :goto_3e
.end method

.method static advName([B)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 188
    const/4 v1, 0x0

    :goto_2
    if-eqz p0, :cond_f

    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_f

    .line 189
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 190
    if-nez v2, :cond_10

    .line 203
    :cond_f
    :goto_f
    return-object v0

    .line 193
    :cond_10
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 194
    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3c

    :cond_1e
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    array-length v4, p0

    if-gt v3, v4, :cond_3c

    .line 196
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

    .line 201
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 202
    goto :goto_2

    .line 197
    :catch_40
    move-exception v1

    goto :goto_f
.end method

.method static advertisesFfb0([B)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 169
    move v2, v0

    :goto_2
    if-eqz p0, :cond_16

    add-int/lit8 v1, v2, 0x1

    array-length v3, p0

    if-ge v1, v3, :cond_16

    .line 170
    aget-byte v1, p0, v2

    and-int/lit16 v3, v1, 0xff

    .line 171
    if-eqz v3, :cond_16

    add-int v1, v2, v3

    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-lt v1, v4, :cond_17

    .line 184
    :cond_16
    :goto_16
    return v0

    .line 174
    :cond_17
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 175
    const/4 v4, 0x2

    if-eq v1, v4, :cond_23

    const/4 v4, 0x3

    if-ne v1, v4, :cond_47

    .line 176
    :cond_23
    add-int/lit8 v1, v2, 0x2

    :goto_25
    add-int/lit8 v4, v1, 0x1

    add-int v5, v2, v3

    if-gt v4, v5, :cond_47

    .line 177
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

    .line 178
    const/4 v0, 0x1

    goto :goto_16

    .line 176
    :cond_44
    add-int/lit8 v1, v1, 0x2

    goto :goto_25

    .line 182
    :cond_47
    add-int/lit8 v1, v3, 0x1

    add-int/2addr v1, v2

    move v2, v1

    .line 183
    goto :goto_2
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    const-string v0, "scale"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static looksLikeScale(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 158
    if-nez p0, :cond_4

    .line 162
    :cond_3
    :goto_3
    return v0

    .line 161
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 162
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

    .line 163
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

    .line 164
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
    .line 330
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

    .line 402
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    if-ne p1, v2, :cond_18

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_18

    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v3, 0x42

    if-eq v2, v3, :cond_19

    .line 415
    :cond_18
    :goto_18
    return-void

    .line 405
    :cond_19
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_6b

    iget-wide v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 406
    :goto_21
    cmpl-double v0, v5, v0

    if-lez v0, :cond_5e

    .line 407
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

    .line 408
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    if-nez v0, :cond_5e

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    .line 410
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidLong(J)J

    move-result-wide v2

    iget v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    iget-boolean v7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    iget v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->usersB(JIDZI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 411
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->otherB()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 414
    :cond_5e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    :cond_6b
    move-wide v5, v0

    .line 405
    goto :goto_21
.end method

.method public close()V
    .registers 3

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    .line 449
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 450
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 452
    return-void
.end method

.method closeGatt()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 456
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 457
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 458
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 460
    if-eqz v0, :cond_17

    .line 462
    :try_start_11
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_18

    .line 466
    :goto_14
    :try_start_14
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1a

    .line 470
    :cond_17
    :goto_17
    return-void

    .line 463
    :catch_18
    move-exception v1

    goto :goto_14

    .line 467
    :catch_1a
    move-exception v0

    goto :goto_17
.end method

.method finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V
    .registers 6

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    if-eqz v0, :cond_5

    .line 437
    :goto_4
    return-void

    .line 432
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 435
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onResult(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method found(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 207
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_e

    .line 225
    :cond_d
    :goto_d
    return-void

    .line 210
    :cond_e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 213
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->resetSession()V

    .line 215
    :try_start_31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6e

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_46} :catch_47

    goto :goto_d

    .line 220
    :catch_47
    move-exception v0

    .line 221
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

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 218
    :cond_6e
    :try_start_6e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_7c} :catch_47

    goto :goto_d
.end method

.method handshakeA()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 334
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    if-eqz v0, :cond_6

    .line 344
    :cond_5
    return-void

    .line 337
    :cond_6
    iput-boolean v12, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    .line 338
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

    .line 339
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uidBytes(J)[B

    move-result-object v10

    .line 338
    invoke-static/range {v1 .. v10}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->handshakeA(IJIIDZI[B)Ljava/util/List;

    move-result-object v0

    .line 340
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 342
    invoke-virtual {p0, v0, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_31
.end method

.method isScale(Landroid/bluetooth/BluetoothDevice;[B)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 141
    :cond_f
    const/4 v0, 0x0

    .line 154
    :cond_10
    :goto_10
    return v0

    .line 143
    :cond_11
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 146
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advertisesFfb0([B)Z

    move-result v1

    if-nez v1, :cond_10

    .line 149
    const/4 v0, 0x0

    .line 151
    :try_start_24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_34

    move-result-object v0

    .line 154
    :goto_28
    if-eqz v0, :cond_2f

    :goto_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->looksLikeScale(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    :cond_2f
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->advName([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 152
    :catch_34
    move-exception v1

    goto :goto_28
.end method

.method live(DZ)V
    .registers 7

    .prologue
    const/4 v2, 0x4

    .line 420
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 421
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveStable:Z

    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, v2, :cond_12

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_12

    .line 423
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 425
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onLive(DZ)V

    .line 426
    return-void
.end method

.method onChanged(Ljava/util/UUID;[B)V
    .registers 5

    .prologue
    .line 304
    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    if-eqz v0, :cond_7

    .line 312
    :cond_6
    :goto_6
    return-void

    .line 307
    :cond_7
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x41

    if-ne v0, v1, :cond_11

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameA(Ljava/util/UUID;[B)V

    goto :goto_6

    .line 310
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onFrameB(Ljava/util/UUID;[B)V

    goto :goto_6
.end method

.method onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8

    .prologue
    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_5

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 247
    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_29

    .line 248
    const-string v0, "connected"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 250
    :try_start_d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_4

    .line 251
    :catch_11
    move-exception v0

    .line 252
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

    .line 254
    :cond_29
    if-nez p3, :cond_4

    .line 255
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

    .line 256
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 257
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method onFrameA(Ljava/util/UUID;[B)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 347
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 348
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->liveWeightA([B)D

    move-result-wide v0

    .line 349
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_17

    .line 350
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    .line 369
    :cond_17
    :goto_17
    return-void

    .line 354
    :cond_18
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->parseA([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_17

    .line 358
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 359
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_39

    .line 360
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackA(II)[B

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 361
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeA()V

    goto :goto_17

    .line 362
    :cond_39
    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_45

    iget v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->type:I

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_17

    .line 363
    :cond_45
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;->seq:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackA(II)[B

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    .line 364
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->decodeA(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$FrameA;)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stored:Z

    if-nez v1, :cond_17

    .line 366
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_17
.end method

.method onFrameB(Ljava/util/UUID;[B)V
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 374
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

    .line 375
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->validB([B)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v1

    .line 376
    :goto_23
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmLive:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    :goto_2d
    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->add([B)[B

    move-result-object v2

    .line 377
    if-eqz v0, :cond_44

    .line 378
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->ackB(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->sendB([B)V

    .line 379
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    .line 381
    :cond_44
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->decodeB([B)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v0

    .line 382
    if-nez v0, :cond_50

    .line 391
    :cond_4a
    :goto_4a
    return-void

    .line 375
    :cond_4b
    const/4 v0, 0x0

    goto :goto_23

    .line 376
    :cond_4d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->asmFrames:Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;

    goto :goto_2d

    .line 385
    :cond_50
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 386
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    if-eqz v1, :cond_5a

    .line 387
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_4a

    .line 388
    :cond_5a
    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4a

    .line 389
    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_4a
.end method

.method onReady()V
    .registers 5

    .prologue
    .line 315
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 316
    iget-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    const/16 v1, 0x41

    if-ne v0, v1, :cond_17

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Unprompted;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :goto_16
    return-void

    .line 319
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->beatToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Beat;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method

.method onServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eq p1, v0, :cond_6

    .line 283
    :goto_5
    return-void

    .line 267
    :cond_6
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->SERVICE:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 268
    if-nez v1, :cond_49

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no FFB0 on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->notScales:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 275
    :cond_49
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->WRITE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 277
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->NAME_IMAGE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_a4

    const/16 v0, 0x41

    :goto_68
    iput-char v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gen "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->LIVE:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 280
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->FRAMES:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto/16 :goto_5

    .line 277
    :cond_a4
    const/16 v0, 0x42

    goto :goto_68
.end method

.method opDone()V
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 517
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    .line 518
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    .line 519
    return-void
.end method

.method pump()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 483
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_c

    .line 513
    :cond_b
    :goto_b
    return-void

    .line 486
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    .line 490
    :try_start_1c
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_54

    .line 491
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->onReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_c

    .line 504
    :catch_25
    move-exception v0

    .line 505
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

    .line 507
    :goto_3d
    if-eqz v0, :cond_c

    .line 508
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 509
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->opToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$OpTimeout;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 493
    :cond_54
    :try_start_54
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    if-ne v2, v4, :cond_68

    .line 494
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 495
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->desc:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    goto :goto_3d

    .line 497
    :cond_68
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 498
    iget v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->kind:I

    if-ne v2, v3, :cond_8c

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_8c

    move v2, v3

    .line 497
    :goto_79
    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 501
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;->data:[B

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_8a} :catch_25

    move-result v0

    goto :goto_3d

    :cond_8c
    move v2, v4

    .line 500
    goto :goto_79
.end method

.method resetSession()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 228
    iput-char v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->gen:C

    .line 229
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 230
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->handshakeSent:Z

    .line 231
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heard:Z

    .line 232
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->replyIndex:I

    .line 233
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->usersSent:Z

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveKg:D

    .line 235
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->liveStable:Z

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->busy:Z

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 239
    return-void
.end method

.method send([BZ)V
    .registers 7

    .prologue
    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->write:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_5

    .line 480
    :goto_4
    return-void

    .line 478
    :cond_5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    if-eqz p2, :cond_17

    const/4 v0, 0x2

    :goto_c
    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->pump()V

    goto :goto_4

    .line 478
    :cond_17
    const/4 v0, 0x3

    goto :goto_c
.end method

.method sendB([B)V
    .registers 5

    .prologue
    .line 394
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

    .line 395
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->send([BZ)V

    goto :goto_a

    .line 397
    :cond_1b
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->seq:I

    .line 398
    return-void
.end method

.method setState(I)V
    .registers 3

    .prologue
    .line 440
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    if-eq v0, p1, :cond_b

    .line 441
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->state:I

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->listener:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Listener;->onState(I)V

    .line 444
    :cond_b
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 103
    :cond_15
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 107
    :goto_19
    return-void

    .line 106
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->startScan()V

    goto :goto_19
.end method

.method startScan()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x7d0

    .line 110
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->done:Z

    if-eqz v0, :cond_b

    .line 125
    :cond_a
    :goto_a
    return-void

    .line 113
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->setState(I)V

    .line 115
    :try_start_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 116
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 118
    const-string v0, "startLeScan refused"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_34} :catch_35

    goto :goto_a

    .line 121
    :catch_35
    move-exception v0

    .line 122
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

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Retry;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method stopScan()V
    .registers 3

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_f

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_13

    .line 134
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->scan:Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Scan;

    .line 135
    return-void

    .line 132
    :catch_13
    move-exception v0

    goto :goto_f
.end method

.method subscribe(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 286
    if-nez p2, :cond_4

    .line 301
    :cond_3
    :goto_3
    return-void

    .line 290
    :cond_4
    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {p1, p2, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_30

    .line 294
    :goto_8
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->CCCD:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_3

    .line 296
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_48

    .line 297
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_48

    move v0, v1

    .line 298
    :goto_21
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->ops:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;

    if-eqz v0, :cond_4a

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 299
    :goto_29
    invoke-direct {v4, v1, v2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Op;-><init>(ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    .line 298
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 291
    :catch_30
    move-exception v0

    .line 292
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

    .line 297
    :cond_48
    const/4 v0, 0x0

    goto :goto_21

    .line 299
    :cond_4a
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_29
.end method

.method unixNow()J
    .registers 5

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
