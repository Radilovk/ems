.class final Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;
.super Ljava/lang/Object;
.source "VoiceUsb.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Flash"
.end annotation


# instance fields
.field final d:Landroid/hardware/usb/UsbDevice;

.field last:I


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;->last:I

    .line 273
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;->d:Landroid/hardware/usb/UsbDevice;

    .line 274
    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .registers 5

    .prologue
    .line 325
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;->last:I

    if-eq p1, v0, :cond_11

    .line 326
    iput p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;->last:I

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    :cond_11
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 278
    .line 281
    :try_start_3
    const-string v0, "app.dat"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->asset(Ljava/lang/String;)[B

    move-result-object v8

    const-string v0, "app.bin"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->asset(Ljava/lang/String;)[B

    move-result-object v9

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;->d:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->cdc(Landroid/hardware/usb/UsbDevice;)[Landroid/hardware/usb/UsbInterface;

    move-result-object v10

    .line 283
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->um:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Flash;->d:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1c} :catch_cc
    .catchall {:try_start_3 .. :try_end_1c} :catchall_ed

    move-result-object v5

    .line 284
    const/4 v0, 0x0

    :try_start_1e
    aget-object v0, v10, v0

    if-eqz v0, :cond_29

    .line 285
    const/4 v0, 0x0

    aget-object v0, v10, v0

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 287
    :cond_29
    const/4 v0, 0x1

    aget-object v0, v10, v0

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move v7, v4

    move-object v0, v6

    move-object v2, v6

    .line 289
    :goto_33
    const/4 v1, 0x1

    aget-object v1, v10, v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v7, v1, :cond_59

    .line 290
    const/4 v1, 0x1

    aget-object v1, v10, v1

    invoke-virtual {v1, v7}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_53

    .line 292
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v6

    const/16 v11, 0x80

    if-ne v6, v11, :cond_57

    move-object v2, v1

    .line 289
    :cond_53
    :goto_53
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_33

    :cond_57
    move-object v0, v1

    .line 295
    goto :goto_53

    .line 299
    :cond_59
    const/4 v1, 0x0

    aget-object v1, v10, v1

    if-eqz v1, :cond_c1

    const/4 v1, 0x0

    aget-object v1, v10, v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    .line 300
    :goto_65
    const v6, 0x1c200

    invoke-static {v5, v1, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->lineCoding(Landroid/hardware/usb/UsbDeviceConnection;II)V

    .line 301
    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->lines(Landroid/hardware/usb/UsbDeviceConnection;IZ)V

    .line 302
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 303
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 304
    :cond_78
    array-length v6, v1

    const/16 v7, 0x32

    invoke-virtual {v5, v2, v1, v6, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v6

    if-gtz v6, :cond_78

    .line 307
    new-instance v1, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;

    new-instance v6, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;

    invoke-direct {v6, v5, v2, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Port;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    invoke-direct {v1, v6}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;-><init>(Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;)V

    invoke-virtual {v1, v8, v9, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->run([B[BLcom/isaigu/gymapp/wearable/voice/VoiceDfu$Progress;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_8e} :catch_fe
    .catchall {:try_start_1e .. :try_end_8e} :catchall_f9

    .line 309
    :try_start_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firmware written, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->log(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_ab} :catch_102
    .catchall {:try_start_8e .. :try_end_ab} :catchall_f9

    .line 313
    if-eqz v5, :cond_106

    .line 315
    :try_start_ad
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_c9

    move v0, v3

    .line 320
    :cond_b1
    :goto_b1
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;

    if-eqz v0, :cond_f5

    const/4 v0, 0x5

    :goto_b8
    const/16 v3, 0x64

    invoke-direct {v2, v0, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void

    .line 299
    :cond_c1
    const/4 v1, 0x1

    :try_start_c2
    aget-object v1, v10, v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_c7} :catch_fe
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_f9

    move-result v1

    goto :goto_65

    .line 316
    :catch_c9
    move-exception v0

    move v0, v3

    .line 317
    goto :goto_b1

    .line 310
    :catch_cc
    move-exception v1

    move v0, v4

    move-object v2, v6

    .line 311
    :goto_cf
    :try_start_cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->log(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_cf .. :try_end_e5} :catchall_fb

    .line 313
    if-eqz v2, :cond_b1

    .line 315
    :try_start_e7
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_b1

    .line 316
    :catch_eb
    move-exception v1

    goto :goto_b1

    .line 313
    :catchall_ed
    move-exception v0

    move-object v5, v6

    :goto_ef
    if-eqz v5, :cond_f4

    .line 315
    :try_start_f1
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_f4} :catch_f7

    .line 319
    :cond_f4
    :goto_f4
    throw v0

    .line 320
    :cond_f5
    const/4 v0, 0x6

    goto :goto_b8

    .line 316
    :catch_f7
    move-exception v1

    goto :goto_f4

    .line 313
    :catchall_f9
    move-exception v0

    goto :goto_ef

    :catchall_fb
    move-exception v0

    move-object v5, v2

    goto :goto_ef

    .line 310
    :catch_fe
    move-exception v1

    move v0, v4

    move-object v2, v5

    goto :goto_cf

    :catch_102
    move-exception v1

    move v0, v3

    move-object v2, v5

    goto :goto_cf

    :cond_106
    move v0, v3

    goto :goto_b1
.end method
