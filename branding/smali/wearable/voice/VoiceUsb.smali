.class public final Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;
.super Ljava/lang/Object;
.source "VoiceUsb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;
    }
.end annotation


# static fields
.field static final ACTION:Ljava/lang/String; = "com.isaigu.gymapp.XEMS_VOICE_USB"

.field public static final ASK:I = 0x1

.field static final ASSET:Ljava/lang/String; = "xems/voice/"

.field public static final DONE:I = 0x5

.field public static final FAILED:I = 0x6

.field public static final FW:I = 0x5

.field public static final NO_CABLE:I = 0x0

.field public static final PRESS_RST:I = 0x3

.field public static final RESET:I = 0x2

.field static final VIDS:[I

.field public static final WRITING:I = 0x4

.field static app:Landroid/content/Context;

.field static busy:Z

.field static listener:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;

.field static final main:Landroid/os/Handler;

.field static receiver:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;

.field static stage:I

.field static um:Landroid/hardware/usb/UsbManager;

.field static waitUntil:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->VIDS:[I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    return-void

    .line 38
    nop

    :array_18
    .array-data 4
        0x2886
        0x239a
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asset(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xems/voice/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 218
    :try_start_1d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 219
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 221
    :goto_26
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_36

    .line 222
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_31

    goto :goto_26

    .line 226
    :catchall_31
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 227
    throw v0

    .line 224
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_31

    move-result-object v0

    .line 226
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 224
    return-object v0
.end method

.method static bootloader(Landroid/hardware/usb/UsbDevice;)Z
    .registers 3

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static busy()Z
    .registers 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    return v0
.end method

.method public static cancel()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method static cdc(Landroid/hardware/usb/UsbDevice;)[Landroid/hardware/usb/UsbInterface;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 168
    move v3, v4

    move-object v0, v5

    move-object v2, v5

    .line 169
    :goto_6
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v3, v1, :cond_29

    .line 170
    invoke-virtual {p0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    if-ne v6, v8, :cond_1d

    if-nez v2, :cond_1d

    move-object v2, v1

    .line 169
    :cond_19
    :goto_19
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 173
    :cond_1d
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_19

    if-nez v0, :cond_19

    move-object v0, v1

    .line 174
    goto :goto_19

    .line 177
    :cond_29
    if-eqz v0, :cond_32

    new-array v5, v8, [Landroid/hardware/usb/UsbInterface;

    aput-object v2, v5, v4

    const/4 v1, 0x1

    aput-object v0, v5, v1

    :cond_32
    return-object v5
.end method

.method static find()Landroid/hardware/usb/UsbDevice;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 111
    :cond_6
    :goto_6
    return-object v0

    .line 104
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 105
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->VIDS:[I

    array-length v5, v4

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v5, :cond_15

    aget v6, v4, v2

    .line 106
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    if-ne v7, v6, :cond_35

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->cdc(Landroid/hardware/usb/UsbDevice;)[Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    if-nez v6, :cond_6

    .line 105
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_38
    move-object v0, v1

    .line 111
    goto :goto_6
.end method

.method static lineCoding(Landroid/hardware/usb/UsbDeviceConnection;II)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 181
    const/4 v0, 0x7

    new-array v5, v0, [B

    int-to-byte v0, p2

    aput-byte v0, v5, v3

    const/4 v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    const/4 v0, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    const/4 v0, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    const/4 v0, 0x4

    aput-byte v3, v5, v0

    const/4 v0, 0x5

    aput-byte v3, v5, v0

    const/4 v0, 0x6

    const/16 v1, 0x8

    aput-byte v1, v5, v0

    .line 182
    const/16 v1, 0x21

    const/16 v2, 0x20

    array-length v6, v5

    const/16 v7, 0x1f4

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 183
    return-void
.end method

.method static lines(Landroid/hardware/usb/UsbDeviceConnection;IZ)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 186
    const/16 v1, 0x21

    const/16 v2, 0x22

    if-eqz p2, :cond_11

    const/4 v3, 0x3

    :goto_8
    const/4 v5, 0x0

    const/16 v7, 0x1f4

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 187
    return-void

    :cond_11
    move v3, v6

    .line 186
    goto :goto_8
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    const-string v0, "voice-usb"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;)V
    .registers 6

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->app:Landroid/content/Context;

    .line 66
    sput-object p1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->listener:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;

    .line 67
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    if-eqz v0, :cond_d

    .line 79
    :goto_c
    return-void

    .line 70
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->app:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->receiver:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;

    if-nez v0, :cond_32

    .line 72
    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->receiver:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;

    .line 73
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->app:Landroid/content/Context;

    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->receiver:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Receiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.isaigu.gymapp.XEMS_VOICE_USB"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    :cond_32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->waitUntil:J

    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->step()V

    goto :goto_c
.end method

.method static step()V
    .registers 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 120
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    if-nez v0, :cond_a

    .line 162
    :goto_9
    return-void

    .line 123
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->find()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 125
    if-nez v2, :cond_29

    .line 126
    sget-wide v2, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->waitUntil:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_25

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;-><init>()V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 129
    :cond_25
    invoke-static {v1, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    goto :goto_9

    .line 133
    :cond_29
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 134
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_59

    const/high16 v0, 0x2000000

    .line 136
    :goto_3d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.isaigu.gymapp.XEMS_VOICE_USB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->app:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    sget-object v4, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    sget-object v5, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->app:Landroid/content/Context;

    invoke-static {v5, v1, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_9

    :cond_59
    move v0, v1

    .line 135
    goto :goto_3d

    .line 141
    :cond_5b
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->bootloader(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 142
    const/4 v0, 0x4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;-><init>(Landroid/hardware/usb/UsbDevice;)V

    const-string v2, "xems-voice-dfu"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9

    .line 146
    :cond_75
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    if-eq v0, v6, :cond_7d

    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    if-ne v0, v8, :cond_aa

    .line 147
    :cond_7d
    sget-wide v2, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->waitUntil:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_88

    .line 148
    const/4 v0, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    goto :goto_9

    .line 151
    :cond_88
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    if-ne v0, v6, :cond_9e

    sget-wide v2, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->waitUntil:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x1770

    cmp-long v0, v2, v6

    if-gez v0, :cond_9e

    .line 152
    invoke-static {v8, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    .line 153
    const-wide/32 v0, 0xea60

    add-long/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->waitUntil:J

    .line 155
    :cond_9e
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;-><init>()V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 158
    :cond_aa
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    .line 159
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->touch1200(Landroid/hardware/usb/UsbDevice;)V

    .line 160
    const-wide/16 v0, 0x2328

    add-long/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->waitUntil:J

    .line 161
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Step;-><init>()V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9
.end method

.method static tell(II)V
    .registers 4

    .prologue
    .line 87
    sput p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->stage:I

    .line 88
    const/4 v0, 0x5

    if-eq p0, v0, :cond_a

    const/4 v0, 0x6

    if-eq p0, v0, :cond_a

    if-nez p0, :cond_d

    .line 89
    :cond_a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->busy:Z

    .line 91
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->listener:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;

    if-eqz v0, :cond_16

    .line 93
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->listener:Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;

    invoke-interface {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Listener;->onFlash(II)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    .line 98
    :cond_16
    :goto_16
    return-void

    .line 94
    :catch_17
    move-exception v0

    .line 95
    const-string v1, "VoiceUsb.tell"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method static touch1200(Landroid/hardware/usb/UsbDevice;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 190
    const/4 v1, 0x0

    .line 192
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->cdc(Landroid/hardware/usb/UsbDevice;)[Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 193
    sget-object v3, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p0}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    .line 194
    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_18

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    .line 195
    :cond_18
    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_24

    .line 196
    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 198
    :cond_24
    const/16 v2, 0x4b0

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->lineCoding(Landroid/hardware/usb/UsbDeviceConnection;II)V

    .line 199
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->lines(Landroid/hardware/usb/UsbDeviceConnection;IZ)V

    .line 200
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 201
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->lines(Landroid/hardware/usb/UsbDeviceConnection;IZ)V

    .line 202
    const-string v0, "touch 1200 sent"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->log(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3b} :catch_41
    .catchall {:try_start_2 .. :try_end_3b} :catchall_60

    .line 206
    if-eqz v1, :cond_40

    .line 208
    :try_start_3d
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_67

    .line 213
    :cond_40
    :goto_40
    return-void

    .line 203
    :catch_41
    move-exception v0

    .line 204
    :try_start_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->log(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_60

    .line 206
    if-eqz v1, :cond_40

    .line 208
    :try_start_5a
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_40

    .line 209
    :catch_5e
    move-exception v0

    goto :goto_40

    .line 206
    :catchall_60
    move-exception v0

    if-eqz v1, :cond_66

    .line 208
    :try_start_63
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_69

    .line 212
    :cond_66
    :goto_66
    throw v0

    .line 209
    :catch_67
    move-exception v0

    goto :goto_40

    :catch_69
    move-exception v1

    goto :goto_66
.end method
